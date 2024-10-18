package com.ruoyi.web.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.web.controller.tool.CalculatorTool;
import com.ruoyi.web.domain.*;
import com.ruoyi.web.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.ValueVarcharMapper;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-08-18
 */
@Service
public class ValueVarcharServiceImpl extends ServiceImpl<ValueVarcharMapper,ValueVarchar> implements IValueVarcharService
{
    @Autowired
    private ValueVarcharMapper valueVarcharMapper;

    @Autowired
    ITableService tableService;

    @Autowired
    ITableAttributeService tableAttributeService;

    @Autowired
    IAttributeService attributeService;

    @Autowired
    IProjectInfoService projectInfoService;

    @Autowired
    CalculatorTool calculatorTool;

    @Autowired
    IEquationService equationService;

    @Autowired
    IEntityService entityService;


    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public ValueVarchar selectValueVarcharById(String id)
    {
        return valueVarcharMapper.selectValueVarcharById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param valueVarchar 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<ValueVarchar> selectValueVarcharList(ValueVarchar valueVarchar)
    {
        return valueVarcharMapper.selectValueVarcharList(valueVarchar);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param valueVarchar 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertValueVarchar(ValueVarchar valueVarchar)
    {
        valueVarchar.setCreateTime(DateUtils.getNowDate());
        valueVarchar.setUpdateTime(DateUtils.getNowDate());
        return valueVarcharMapper.insertValueVarchar(valueVarchar);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param valueVarchar 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateValueVarchar(ValueVarchar valueVarchar)
    {
        valueVarchar.setUpdateTime(DateUtils.getNowDate());
        return valueVarcharMapper.updateValueVarchar(valueVarchar);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteValueVarcharByIds(String[] ids)
    {
        return valueVarcharMapper.deleteValueVarcharByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteValueVarcharById(String id)
    {
        return valueVarcharMapper.deleteValueVarcharById(id);
    }

    @Override
    public Long selectValueIdByIds(Long projectId, Long entityId, Long tableId, Long attrId) {
        QueryWrapper<ValueVarchar> queryWrapper=new QueryWrapper<>();
        if(entityId==null){
            queryWrapper.eq("project_info_id",projectId).isNull("project_entity_id").eq("table_id",tableId).eq("attribute_id",attrId);
        }else if(projectId==null){
            queryWrapper.eq("project_info_id",projectId).eq("project_entity_id",entityId).eq("table_id",tableId).eq("attribute_id",attrId);
        }else{
            queryWrapper.eq("project_info_id",projectId).eq("project_entity_id",entityId).eq("table_id",tableId).eq("attribute_id",attrId);
        }

        ValueVarchar valueVarchar = this.baseMapper.selectOne(queryWrapper);
        if(valueVarchar!=null){
            return valueVarchar.getId();
        }else{
            return null;
        }
    }

    @Override
    public Object selectValueByIds(Long projectInfoId, Long attrbuteId, Long tableId, Long entitesId) {
        QueryWrapper<ValueVarchar> queryWrapper=new QueryWrapper<>();
        if(entitesId==null && projectInfoId==null){
            queryWrapper.isNull("project_info_id").isNull("project_entity_id").eq("table_id",tableId).eq("attribute_id",attrbuteId);
        }
        else if(entitesId==null){
            queryWrapper.eq("project_info_id",projectInfoId).isNull("project_entity_id").eq("table_id",tableId).eq("attribute_id",attrbuteId);
        }else if(projectInfoId==null){
            queryWrapper.isNull("project_info_id").eq("project_entity_id",entitesId).eq("table_id",tableId).eq("attribute_id",attrbuteId);
        }else{
            queryWrapper.eq("project_info_id",projectInfoId).eq("project_entity_id",entitesId).eq("table_id",tableId).eq("attribute_id",attrbuteId);
        }

        ValueVarchar valueVarchar = this.baseMapper.selectOne(queryWrapper);
        if(valueVarchar==null){
            return null;
        }
        return valueVarchar.getValue();
    }

    @Override
    public void deleteValueVarcharByEntityAndProject(Long entityId, Long projectId) {
        QueryWrapper<ValueVarchar> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("project_info_id",projectId).eq("project_entity_id",entityId);
        int delete = this.baseMapper.delete(queryWrapper);
        System.out.println("成功删除"+delete+"条数据");
    }

    @Override
    public Long validHasValueByIds(Long projectInfoId, Long tableId, Long entityId) {
        QueryWrapper<ValueVarchar> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("project_info_id",projectInfoId).eq("project_entity_id",entityId)
                .eq("table_id",tableId).eq("project_entity_id",entityId);
        Long count=this.baseMapper.selectCount(queryWrapper);
        return count;
    }

    @Override
    public List<String> findValueByProjectInfoIdAndTableIdAndAttributeId(Long projectInfoId, Long tableId, Long attributeId) {
        return valueVarcharMapper.findValueByProjectInfoIdAndTableIdAndAttributeId(projectInfoId, tableId, attributeId);
    }

    @Override
    public ValueVarchar findByTableIdAndAttrValue(Long tableId, String attrValue) {
        return valueVarcharMapper.findByTableIdAndAttrValue(tableId, attrValue);
    }

    @Override
    public String selectValueByTableIdAndAttributeId(Long tableId, Long attributeId) {
        return valueVarcharMapper.selectValueByTableIdAndAttributeId(tableId, attributeId);
    }

    @Override
    public void calculate(Set<Long> tableIds, Long projectId) throws ScriptException {
        List<Long> tableIdArray = new ArrayList<>();
        for (Long tableId : tableIds) {
            tableIdArray.add(tableId);
        }

//        List<TableAttribute> tableAttributeList=tableAttributeService.selectTableAttributebyTableId(tableIdArray);
        List<Equation> equationList=equationService.selectEquationByTableId(tableIdArray);
        for (Equation equationEntity : equationList) {
            Long attributeId = equationEntity.getAttributeId();
            Long tableId = equationEntity.getTableId();
            Table table=tableService.selectTableById(tableId);
            Integer timeRelated = table.getTimeRelated();
            ProjectInfo projectInfo = projectInfoService.selectProjectInfoById(projectId);
            Attribute attribute = attributeService.selectAttributeByid(attributeId.toString());
            Long Durations=null;
            if(timeRelated==1){
                Durations=projectInfo.getConstructionDurationYears()+1;
            }else{
                Durations=projectInfo.getProjectEvaluationDurationYears()+1;
            }

            String attributeName = attribute.getName();
            String equation = equationEntity.getEquation();
            Long isProduct=equationEntity.getIsProduct();
            List<Long> entityIds=this.selectEntityIdsByIds(projectId,tableId);
            if(isProduct==0L){
                Long entityId=equationEntity.getEntityId();
                calculateAndSaveOneEntity(projectId, entityId, attributeName, Durations, equation, attributeId, tableId,isProduct);
            }else if(isProduct==1L){
                if(entityIds!=null && entityIds.size()>0){
                    for (Long entityId : entityIds) {
                        if(entityId!=null){
                            Long count=equationService.selectEquationByIds(tableId,attributeId,entityId);
                            if(count==0){
                                Entity entity = entityService.selectEntityById(entityId);
                                if(entity.getIsProduct()==1){
                                    calculateAndSaveOneEntity(projectId, entityId, attributeName, Durations, equation, attributeId, tableId,isProduct);
                                }
                            }
                        }
                    }
                }
            }else{
                if(entityIds!=null && entityIds.size()>0){
                    for (Long entityId : entityIds) {
                        calculateAndSaveOneEntity(projectId, entityId, attributeName, Durations, equation, attributeId, tableId, isProduct);
                    }
                }
            }



        }
    }

    private void calculateAndSaveOneEntity(Long projectId, Long entityId, String attributeName, Long Durations, String equation, Long attributeId, Long tableId, Long isProduct) throws ScriptException {
        if(attributeName.equals("年份")){
            String[] splitEquation=null;
            if(equation.contains(":")){
                splitEquation = equation.split(":");
            }
            for(Integer i = 0; i< Durations; i++){
                if(splitEquation!=null){
                    if(i==0){
                        equation=splitEquation[0];
                    }else{
                        equation=splitEquation[1];
                    }
                }
                ScriptEngine js = new ScriptEngineManager().getEngineByName("JavaScript");
                String newEquation=equation;
                while(newEquation.contains("i")){
                    StringBuilder stringBuilder=new StringBuilder(newEquation);
                    int left = stringBuilder.indexOf("i");
                    if(stringBuilder.substring(left+1,left+2).equals("]") ||stringBuilder.substring(left+1,left+2).equals(")")){
                        newEquation= newEquation.replace("i",i.toString());
                    }else{
                        String calculateIndex = stringBuilder.substring(left, left + 3);
                        calculateIndex=calculateIndex.replace("i",i.toString());
                        Integer replaceIndex= (Integer) js.eval(calculateIndex);
                        stringBuilder.delete(left,left+3);
                        stringBuilder.insert(left,replaceIndex.toString());
                        newEquation=stringBuilder.toString();
                    }
                }
                Float value=null;
                System.out.println(newEquation);
                System.out.println("isProduct"+isProduct);
                if(isProduct==1){
                    //关联的产品数据一定是跟自身一致的
                    value=calculatorTool.calculateOneValue(projectId,newEquation, entityId);
                }else if(isProduct==0){
                    //下一步再查询entityId
                    value=calculatorTool.calculateOneValue(projectId,newEquation, null);
                }else{
                    value=calculatorTool.calculateOneValue(projectId,newEquation, entityId);
                }
                System.out.print(newEquation+"       ");
                System.out.println(value);
                if(value!=null){
                    //检查数据库里是否已有相关数据
                    Object yearsValue = this.selectValueByIds(projectId, attributeId, tableId, entityId);
                    ValueVarchar valueVarchar = new ValueVarchar();
                    valueVarchar.setProjectInfoId(projectId);
                    valueVarchar.setAttributeId(attributeId);
                    valueVarchar.setProjectEntityId(entityId);
                    valueVarchar.setTableId(tableId);
                    if(yearsValue==null){
                        String[] insertString=new String[Durations.intValue()];
                        insertString[i]=value.toString();
                        valueVarchar.setValue(insertString.toString());
                        this.insertValueVarchar(valueVarchar);
                    }else{
                        Long valueId = this.selectValueIdByIds(projectId, entityId, tableId, attributeId);
                        valueVarchar.setId(valueId);
                        //如果有，更新相应索引的值
                        String yearsNowValue = yearsValue.toString();
                        yearsNowValue=yearsNowValue.replace("[", "").replace("]", "").replace(" ", "");
                        String[] nowValues = yearsNowValue.split(",");
                        if(nowValues.length>=i+1){
                            nowValues[i]=value.toString();
                            valueVarchar.setValue(Arrays.toString(nowValues));
                            this.updateValueVarchar(valueVarchar);
                        }else{
                            List<String> newValues = new ArrayList<>(Arrays.asList(nowValues));
                            int insertNum=i+1-newValues.size();
                            for(int j=0;j<insertNum;j++){
                                if(j==insertNum-1){
                                    newValues.add(value.toString());
                                }else{
                                    newValues.add("");
                                }
                            }
                            valueVarchar.setValue(Arrays.toString(newValues.toArray()));
                            this.updateValueVarchar(valueVarchar);
                        }
                    }
                }
            }
        }else{
            Float value=null;
            System.out.println(equation);
            if(isProduct==1){
                //关联的产品数据一定是跟自身一致的
                value=calculatorTool.calculateOneValue(projectId,equation, entityId);
            }else if(isProduct==0){
                //下一步再查询entityId
                value=calculatorTool.calculateOneValue(projectId,equation, null);
            }else{
                value=calculatorTool.calculateOneValue(projectId,equation, entityId);
            }
            if(value!=null){
                ValueVarchar valueVarchar = new ValueVarchar();
                valueVarchar.setProjectInfoId(projectId);
                valueVarchar.setAttributeId(attributeId);
                valueVarchar.setProjectEntityId(entityId);
                valueVarchar.setTableId(tableId);
                valueVarchar.setValue(value.toString());
                Long valueId = this.selectValueIdByIds(projectId, entityId, tableId, attributeId);
                if(valueId!=null){
                    valueVarchar.setId(valueId);
                    this.updateValueVarchar(valueVarchar);
                }else{
                    this.insertValueVarchar(valueVarchar);
                }
            }
        }
    }

    public List<Long> selectEntityIdsByIds(Long projectId, Long tableId) {
        return this.baseMapper.selectEntityIdsByIds(projectId,tableId);
    }
}
