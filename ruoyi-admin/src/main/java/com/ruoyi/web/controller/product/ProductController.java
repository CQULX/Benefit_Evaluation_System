package com.ruoyi.web.controller.product;


import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.web.controller.tool.JsonBuilder;
import com.ruoyi.web.domain.*;
import com.ruoyi.web.domain.Module;
import com.ruoyi.web.service.*;
import com.sun.xml.bind.v2.TODO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.script.ScriptException;
import java.util.*;

/**
 * 产品Controller
 *
 * @author RuoYi
 * @date 2024-08-16
 *
 **/
@RestController
@RequestMapping("/newproject")

public class ProductController extends BaseController {

    @Autowired
    IEntityService entityService;

    @Autowired
    IProjectInfoService projectInfoService;

    @Autowired
    IModuleService moduleService;

    @Autowired
    ITableService tableService;

    @Autowired
    IAttributeService attributeService;

    @Autowired
    IValueVarcharService valueVarcharService;


    @Autowired
    private JsonBuilder jsonBuilder;

    //TODO:前端维护模板id
    @GetMapping("/product/list")
    public AjaxResult list(@RequestParam(defaultValue = "6") int projectId,@RequestParam(defaultValue = "1") int pageIndex){
        Long projectInfoId= (long) projectId;

        // 获取子类ID
        Long subcategoryId = projectInfoService.selectSubCategoryIdByProjectInfoId(projectInfoId);

        // 1.获取属于该子类的产品信息列表
        List<Entity> entities = entityService.selectEntityBySubcategory(subcategoryId);

        // 检查列表是否为空
        if (entities.isEmpty()) {
            return AjaxResult.error("No entities found");
        }

        // 获取产品ID列表：从project_entity表中获取，如果有数据则存的是用户选择的产品ID，无数据则为空
        List<Long> entitiesIds =projectInfoService.selectEntitesListByProjectId(projectInfoId);

        //根据projectId获取templateId
        Long templateId=projectInfoService.selectTemplateIdByProjectId(projectInfoId);


        // 2.获取模块信息（根据模板ID、页码来筛选出对应的模块)
        Module module = moduleService.selectModuleByTemplateId(templateId, pageIndex);

        // 获取模块ID
        Long moduleId = module.getId();

        // 获取模块名称
        String name = module.getName();


        // 3.获取子表信息列表（根据模块ID来筛选）
        List<Table> tables = tableService.selectTableByModuleId(moduleId);

        // 获取子表ID
        List<Long> tableIds = new ArrayList<>();

        for (Table table : tables) {
            Long tableId = table.getId();
            tableIds.add(tableId);
        }


        // 4.获取属性ID列表（table_attribute:根据子表ID来获得属性ID)
        List<Long> attributeIds = attributeService.selectAttributeIdsByTableIds(tableIds);

        // 创建一个 Set 来存储属性ID的并集
        Set<Long> uniqueAttributeIds = new HashSet<>();

        // 将获取到的属性ID添加到 Set 中，是所有属于该模块的表的属性的并集
        uniqueAttributeIds.addAll(attributeIds);
        // 将 Set 转换为 List
        List<Long> attributeIdUnion = new ArrayList<>(uniqueAttributeIds);

        // 获取属性信息列表（attribute根据属性ID列表来获得）
        List<Attribute> attributes = attributeService.selectAttributeByIds(attributeIdUnion);
        // 获取属性名称
        List<String> attributeNames = new ArrayList<>();
        for (Attribute attribute : attributes) {
            attributeNames.add(attribute.getName());
        }

        // 5.获取建设开始时间和建设时长
        ProjectInfo projectInfo = projectInfoService.selectProjectInfoById(projectInfoId);
        Date buildStartTime = projectInfo.getConstructionStartDate();
        Long buildDuration = projectInfo.getConstructionDurationYears();
        if(buildDuration ==null){
            buildDuration = 1L;
        }
        // 6.获取评估开始时间和评估时长
        Date evalStartTime = projectInfo.getEvaluationStartDate();
        Long evalDuration = projectInfo.getProjectEvaluationDurationYears();
        if(evalDuration ==null){
            evalDuration = 1L;
        }

        // 6.构造返回前端的JSON
        Map<String, Object> jsonData = jsonBuilder.buildJsonData(buildStartTime, buildDuration + 1, evalStartTime,evalDuration + 1,attributeIdUnion, entities,tables,entitiesIds,projectInfoId);

        // 7.返回成功结果和实体列表
        return AjaxResult.success("Page data fetched successfully", jsonData);
    }

    @PostMapping("/product/save/{projectId}")
    public AjaxResult saveTableData(@RequestBody List<HashMap<String,Object>> saveData,@PathVariable("projectId") Long projectId) throws ScriptException {
        System.out.println(saveData);
        Long tableId = null;
        List<String> attributeNameList = null;
        Set<String> productSets=new HashSet<>();
        Set<Long> tableIds=new LinkedHashSet<>();
        for (HashMap<String, Object> saveDatum : saveData) {
            //判断是否为表头，根据表名查询tableId
            if((boolean) saveDatum.get("isHeader")){
                String tableName = (String) saveDatum.get("类型");
                tableId=tableService.selectTableIdByTableName(tableName);
                tableIds.add(tableId);
                attributeNameList=tableService.selectAttributeNameByTableId(tableId);
                if(saveDatum.containsKey("formData")){
                    HashMap<String,Object> formData = (HashMap<String, Object>) saveDatum.get("formData");
                    for (String formKey : formData.keySet()) {
                        if(attributeNameList.contains(formKey)){
                            attributeNameList.remove(formKey);
                            ValueVarchar formDataValue = new ValueVarchar();
                            Long attrId = attributeService.selectAttributeIdByAttributeName(formKey);
                            Long valueId = valueVarcharService.selectValueIdByIds(projectId, null, tableId, attrId);
                            formDataValue.setTableId(tableId);
                            formDataValue.setAttributeId(attrId);
                            formDataValue.setProjectInfoId(projectId);
                            formDataValue.setValue(formData.get(formKey).toString());
                            if(valueId==null){
                                this.valueVarcharService.insertValueVarchar(formDataValue);
                            }else{
                                formDataValue.setId(valueId);
                                this.valueVarcharService.updateValueVarchar(formDataValue);
                            }
                        }
                    }
                }
                //不是表名直接沿用前面的tableId
            }else{
                for (String key : attributeNameList) {
                    Object value = saveDatum.get(key);
                    if(value==null){
                        value="";
                    }
                    ValueVarchar valueVarchar = new ValueVarchar();
                    //查询attributeId
                    Long attrId=attributeService.selectAttributeIdByAttributeName(key);
                    valueVarchar.setAttributeId(attrId);
                    valueVarchar.setTableId(tableId);
                    valueVarchar.setProjectInfoId(projectId);
                    //查询entityId
                    Long entityId=null;
                    Integer isProduct = (Integer) saveDatum.get("isProduct");
                    if(isProduct==1){
                        String productName= (String) saveDatum.get("类型");
                        String[] s = productName.split(" ");
                        String productCode=s[1];
                        productSets.add(productCode);
                        entityId=entityService.selectEntityIdByProductCode(productCode);
                    }else{
                        String entityName= (String) saveDatum.get("类型");
                        entityId=entityService.selectEntityIdByEntityName(entityName);
                    }
                    valueVarchar.setProjectEntityId(entityId);
                    valueVarchar.setValue(value.toString());
                    Long valueId=valueVarcharService.selectValueIdByIds(projectId,entityId,tableId,attrId);
                    if(valueId==null){
                        this.valueVarcharService.insertValueVarchar(valueVarchar);
                    }else{
                        valueVarchar.setId(valueId);
                        this.valueVarcharService.updateValueVarchar(valueVarchar);
                    }
                }
            }
        }
        if(productSets.size()!=0) {
            this.projectInfoService.saveProductIds(productSets, projectId);
            List<Long> entityIds = this.projectInfoService.selectEntitesListByProjectId(projectId);
            for (Long entityId : entityIds) {
                String productCode = entityService.selectProductCodeByEntityId(entityId);
                if (productSets.contains(productCode)) {

                } else {
                    projectInfoService.deleteProjectEntityInfoByEntityId(entityId);
                    valueVarcharService.deleteValueVarcharByEntityAndProject(entityId, projectId);
                }
            }
        }
        System.out.println("表id集合"+tableIds);
        valueVarcharService.calculate(tableIds,projectId);
//        Long sampleTableId = (Long) tableIds.toArray()[0];
//        Table sampleTable = tableService.selectTableById(sampleTableId);
//        Integer moduleId = sampleTable.getModuleId();
//        Module module=moduleService.selectModuleById(moduleId);
//        this.list(projectId.intValue(),module.getPageIndex());
        return AjaxResult.success("成功保存");
    }


    @PostMapping("/product/delete/{projectId}")
    public AjaxResult delProduct(@RequestBody List<String> delproductCodes,@PathVariable("projectId") Long projectId){
        System.out.println(delproductCodes);
        List<Long> entityIds=new ArrayList<>();
        for (String delproductCode : delproductCodes) {
            entityIds.add(entityService.selectEntityIdByProductCode(delproductCode));
        }
        for (Long entityId : entityIds) {
            Object projectEntity=projectInfoService.selectProjectEntityInfoByEntityId(projectId,entityId);
            if(projectEntity!=null){
                projectInfoService.deleteProjectEntityInfoByEntityId(entityId);
                valueVarcharService.deleteValueVarcharByEntityAndProject(entityId,projectId);
            }
        }
        return AjaxResult.success("成功删除");
    }
}
