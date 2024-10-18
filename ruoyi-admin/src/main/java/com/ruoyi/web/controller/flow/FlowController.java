package com.ruoyi.web.controller.flow;

import com.alibaba.fastjson2.JSON;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.web.controller.flow.param.FlowComputeParam;
import com.ruoyi.web.controller.flow.param.FlowGetParam;
import com.ruoyi.web.controller.flow.strategy.equationStrategy;
import com.ruoyi.web.controller.flow.vo.FlowAggregateVo;
import com.ruoyi.web.domain.Module;
import com.ruoyi.web.domain.*;
import com.ruoyi.web.service.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

/**
 * 流水明细控制器
 * @author lhf
 * @date 2024/8/17 11:44
 */
@Slf4j
@RestController
@RequestMapping("/flow")
public class FlowController {

    @Resource
    IProjectInfoService projectInfoService;

    @Resource
    IProjectSubcategoryService projectSubcategoryService;

    @Resource
    IModuleService moduleService;

    @Resource
    ITableService tableService;

    @Resource
    IAttributeService attributeService;

    @Resource
    IValueVarcharService valueService;

    @Resource
    Map<String, equationStrategy> equationStrategyMap;

    private static Map<String,Object> map = new HashMap<>();
    /**
     * 从后端获取表结构，表的属性和已有的字段，返回给前端渲染
     *
     * @param
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author lhf
     * @date 2024/8/17 15:10
     */
    @PostMapping("/getStructure")
    public AjaxResult getTableStructure(@RequestBody FlowGetParam flowGetParam) {
        log.info("获取流水明细表格结构, 入参 {}",JSON.toJSONString(flowGetParam));

        // 获取项目信息
        Long projectInfoId = flowGetParam.getProjectInfoId();
        map.put("projectInfoId", flowGetParam.getProjectInfoId());
        map.put("pageIndex", flowGetParam.getPageIndex());
        ProjectInfo projectInfo = projectInfoService.selectProjectInfoById(projectInfoId);
        // 项目建设日期
        Date constructionStartDate = projectInfo.getConstructionStartDate();
        Date constructionEndDate = projectInfo.getConstructionEndDate();

        List<String> yearList = getYearListBetweenDates(constructionStartDate, constructionEndDate);
        map.put("yearList", yearList);
        log.info("项目建设年份: {}", JSON.toJSONString(yearList));

        ProjectSubcategory projectSubcategory = projectSubcategoryService.
                selectProjectSubcategoryById(String.valueOf(projectInfo.getProjectSubcategoryId()));
        // 获取模版id
        Long templateId = projectSubcategory.getTemplateId();
        map.put("templateId", templateId);
        // 获取模块id和模块名
        Module moduleEntity = moduleService.selectModuleByTemplateId(templateId, flowGetParam.getPageIndex());
        Long moduleId = moduleEntity.getId();
        String moduleName = moduleEntity.getName();
        log.info("当前的模块名称 {}",moduleName);

        // 根据模块id去table表中获取表信息
        Table tableEntity = tableService.findByModuleId(moduleId);
        map.put("tableId", tableEntity.getId());
        String tableName = tableEntity.getName();
        log.info("当前表名 {}", tableName);
        // 根据表id去table_attribute表中获取当前表下的所有属性id
        List<Long> attributeIdList = attributeService.findAllByTableId(tableEntity.getId());
        // 用属性id，去attribute表中查询对应的属性id和名称
        List<Attribute> attributeEntityList = attributeService.selectAttributeByIds(attributeIdList);

        List<String> attrNameList = new ArrayList<>();
        // 获取用于渲染的到属性值
        Map<String, List<String>> attrMap = new HashMap<>();
        Map<String, List<String>> fixdxAttrMap = new HashMap<>();
        attrNameList.add("序号");
        Integer rowOfTable = 0;
        for(Attribute attributeEntity : attributeEntityList){
            List<String> valueList = valueService
                    .findValueByProjectInfoIdAndTableIdAndAttributeId(projectInfo.getId(),tableEntity.getId(), attributeEntity.getId());
            if("类型".equals(attributeEntity.getName())) rowOfTable = valueList.size();
            // 年份的属性默认是空的，要根据开始和结束建设的时间获取一共有哪些年份，然后存入到属性值的表中
            if("年份".equals(attributeEntity.getName())) {
                log.info("当前建设的年份 {}", JSON.toJSONString(yearList));
                for(int i=0; i < yearList.size(); i++){
                    String yearDesc = "第" + i + "年";
                    attrNameList.add(yearDesc);
                    // 如果没有年份数据，为空
                    if(CollectionUtils.isEmpty(valueList)){
                        attrMap.put(yearDesc, new ArrayList<>());
                        continue;
                    }
                    List<String> list = Arrays.asList(parseStringToListOfLists(valueList.get(0)).get(i).split(","));
                    attrMap.put(yearDesc, list);
                    log.info("当前年份 {}", list);
                }
                continue;
            }
            if ("折现率".equals(attributeEntity.getName()) || "审定税率".equals(attributeEntity.getName())) {
                fixdxAttrMap.put(attributeEntity.getName(), valueList);
            }else if("类型".equals(attributeEntity.getName())) {
                attrNameList.add(attributeEntity.getName());
                attrMap.put(attributeEntity.getName(), valueList);
            }else{
                if(CollectionUtils.isEmpty(valueList)){
                    attrMap.put(attributeEntity.getName(), valueList);
                    attrNameList.add(attributeEntity.getName());
                    continue;
                }
                String[] split = valueList.get(0).substring(1, valueList.get(0).length() - 1).split(",");
                List<String> list = Arrays.asList(split);
                attrMap.put(attributeEntity.getName(), list);
                attrNameList.add(attributeEntity.getName());
            }

        }
        // 每一行的序号
        List<String> rowNumber = new ArrayList<>();
        for (int i = 0; i < rowOfTable; i++) {
            rowNumber.add(String.valueOf(i + 1));
        }
        attrMap.put("序号", rowNumber);

        log.info("模块名： {}, 表名： {}, 属性名： {}, 配置的属性值： {}, 年份： {} ",
                moduleName, tableName, attrNameList, attrMap, yearList);

        return AjaxResult.success(FlowAggregateVo.builder()
                .fixedAttrMap(fixdxAttrMap)
                .attrMap(attrMap)
                .attrNameList(attrNameList)
                .tableName(tableName)
                .moduleName(moduleName)
                .yearList(yearList)
                .rowOfTable(rowOfTable)
                .build());
    }

    private List<String> parseStringToListOfLists(String input) {
        // 正则表达式用于匹配数组
        Pattern arrayPattern = Pattern.compile("\\[(.*?)\\]");
        Matcher matcher = arrayPattern.matcher(input);

        List<String> listOfStrings = new ArrayList<>();
        while (matcher.find()) {
            // 去除前导[，如果存在的话
            String arrayString = matcher.group(1);
            // 去除末尾的]，如果需要的话
            if (arrayString.startsWith("[")) {
                arrayString = arrayString.substring(1);
            }
            // 将匹配到的数组添加到列表中
            listOfStrings.add(arrayString);
        }
        return listOfStrings;
    }

    /**
     * 获取两个日期之间所有年份的列表
     *
     * @param startDate 项目建设的开始日期
     * @param endDate 项目建设的结束日期
     * @return 包含所有年份的列表
     */
    public List<String> getYearListBetweenDates(Date startDate, Date endDate) {
        List<String> yearList = new ArrayList<>();

        Calendar startCalendar = Calendar.getInstance();
        startCalendar.setTime(startDate);
        int startYear = startCalendar.get(Calendar.YEAR);

        Calendar endCalendar = Calendar.getInstance();
        endCalendar.setTime(endDate);
        int endYear = endCalendar.get(Calendar.YEAR);

        for (int year = startYear; year < endYear; year++) {
            yearList.add(String.valueOf(year));
        }

        return yearList;
    }

    /**
     * 计算并保存
     * @param flowComputeParam 入参
     * @return com.ruoyi.common.core.domain.AjaxResult
     * @author lhf
     * @date 2024/8/22 10:14
     */
    @PostMapping("/computeAndSave")
    public AjaxResult computeAndSave(@RequestBody FlowComputeParam flowComputeParam){
        log.info("计算参数 {}", JSON.toJSONString(flowComputeParam));
        Long tableId = (Long) map.get("tableId");
        // 每一行的数据
        List<FlowComputeParam.FlowLineObj> flowLineObjList = flowComputeParam.getFlowLineObjList();
        for(FlowComputeParam.FlowLineObj flowLineObj : flowLineObjList){
            // 取出当前列表中的所有数据并求和
            String attrValue = flowLineObj.getType();
            String equation = valueService.findByTableIdAndAttrValue(tableId, attrValue).getEquation();
            // 计算
            compute(equation, flowLineObj, flowComputeParam);
        }
        log.info("计算结果 {}", JSON.toJSONString(flowLineObjList));

        // 封装要存入db的计算结果
        List<Double> amountList = flowLineObjList.stream()
                .map(FlowComputeParam.FlowLineObj::getAmount)
                .collect(Collectors.toList());
        List<List<Double>> yearDataList = new ArrayList<>();
        List<String> yearList = (List<String>) map.get("yearList");
        for(int i=0;i<yearList.size();i++){
            List<Double> yearData = new ArrayList<>();
            for(FlowComputeParam.FlowLineObj flowLineObj : flowLineObjList){
                yearData.add(flowLineObj.getYearDataList().get(i));
            }
            yearDataList.add(yearData);
        }
        log.info("计算结果：金额（含税） {}", JSON.toJSONString(amountList));
        log.info("计算结果：各年份数据 {}", JSON.toJSONString(yearDataList));
        HashMap<String, Object> resultMap = new HashMap();
        resultMap.put("金额（含税）", amountList);
        resultMap.put("年份", yearDataList);
        for(String key : resultMap.keySet()){
            Object value = resultMap.get(key);
            ValueVarchar valueVarchar = new ValueVarchar();
            valueVarchar.setValue(value.toString());
            valueVarchar.setTableId(tableId);
            valueVarchar.setProjectInfoId((Long) map.get("projectInfoId"));
            Attribute attribute = attributeService.findByName(key);
            valueVarchar.setAttributeId(attribute.getId());

            if(StringUtils.isNotBlank(valueService.selectValueByTableIdAndAttributeId(tableId, attribute.getId()))){
                log.info("数据已存在，请勿重复插入！");
                return AjaxResult.warn("数据已存在，请勿重复插入！", null);
            }
            valueService.insertValueVarchar(valueVarchar);
        }

        log.info("计算结果 {}", JSON.toJSONString(flowLineObjList));

        List<String> typeList = flowLineObjList.stream()
                .map(FlowComputeParam.FlowLineObj::getType)
                .collect(Collectors.toList());
        List<String> numberList = flowLineObjList.stream()
                .map(FlowComputeParam.FlowLineObj::getNumber)
                .map(String::valueOf)
                .collect(Collectors.toList());
        Map<String, List<String>> attrMap = new HashMap<>();
        attrMap.put("序号", numberList);
        attrMap.put("类型", typeList);
        attrMap.put("金额（含税）", amountList.stream().map(String::valueOf).collect(Collectors.toList()));
        for(int i=0;i<yearList.size();i++){
            attrMap.put("第"+i+"年", yearDataList.get(i).stream().map(String::valueOf).collect(Collectors.toList()));
        }
        log.info("计算结果 {}", JSON.toJSONString(attrMap));

        FlowAggregateVo data = FlowAggregateVo.builder()
                .attrMap(attrMap)
                .build();
        return AjaxResult.success(data);
    }

    public void compute(String equation, FlowComputeParam.FlowLineObj flowLineObj, FlowComputeParam flowComputeParam){
        String ops = equation.split(" ")[0];
        if ("sum_row".equals(ops)){
            equationStrategyMap.get(ops).compute(equation, flowLineObj);
        } else{
            equationStrategyMap.get(ops).compute(equation, flowComputeParam, flowLineObj);
        }
    }

}
