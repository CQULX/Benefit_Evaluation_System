package com.ruoyi.web.controller.tool;

import com.ruoyi.web.domain.Entity;
import com.ruoyi.web.domain.Table;
import com.ruoyi.web.domain.TableAttribute;
import com.ruoyi.web.service.IEntityService;
import com.ruoyi.web.service.ITableAttributeService;
import com.ruoyi.web.service.IValueVarcharService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Component;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import java.util.ArrayList;
import java.util.List;

@Component
public class CalculatorTool {


    @Autowired
    IValueVarcharService valueVarcharService;

    @Autowired
    IEntityService entityService;

    @Autowired
    ITableAttributeService tableAttributeService;

    public Float calculateOneValue(Long projectId, String newEquation, Long entityId) throws ScriptException {
//        if(newEquation.contains(""))
        Float result=null;
        int negativeTimes=0;
        while(newEquation.contains("(") && !newEquation.contains("SUM")){
            StringBuilder stringBuilder=new StringBuilder(newEquation);
            int left = stringBuilder.indexOf("(");
            int right=stringBuilder.indexOf(")");
            String subEquation = stringBuilder.substring(left+1, right);
            stringBuilder.delete(left,right+1);
            Float replaceNum = calculateOneValue(projectId, subEquation, entityId);
            if(replaceNum==null){
                return null;
            }
            String insertNum = replaceNum.toString();
            stringBuilder.insert(left,insertNum);
            newEquation = stringBuilder.toString().replace("+-","-").replace("--","-");
            if(newEquation.contains("*-")){
                StringBuilder stringBuilder1=new StringBuilder(newEquation);
                int indexReplace = stringBuilder1.indexOf("*-");
                String searchString=stringBuilder1.substring(0,indexReplace);
                int plusIndex = searchString.lastIndexOf("+");
                int subIndex=searchString.lastIndexOf("-");
                if(plusIndex!=-1 && subIndex!=-1){
                    if(plusIndex>subIndex){
                        stringBuilder1.delete(plusIndex,plusIndex+1);
                        stringBuilder1.insert(plusIndex,"-");
                    }else{
                        stringBuilder1.delete(subIndex,subIndex+1);
                        stringBuilder1.insert(subIndex,"+");
                    }
                }else if(plusIndex==-1 & subIndex!=-1){
                    stringBuilder1.delete(subIndex,subIndex+1);
                    stringBuilder1.insert(subIndex,"+");
                }else if(plusIndex!=-1 && subIndex==-1){
                    stringBuilder1.delete(subIndex,subIndex+1);
                    stringBuilder1.insert(subIndex,"-");
                }else{
                    negativeTimes++;
                }
                newEquation=stringBuilder1.toString().replace("*-","*");
            }
            if(newEquation.contains("/-")){
                StringBuilder stringBuilder1=new StringBuilder(newEquation);
                int indexReplace = stringBuilder1.indexOf("/-");
                String searchString=stringBuilder1.substring(0,indexReplace);
                int plusIndex = searchString.lastIndexOf("+");
                int subIndex=searchString.lastIndexOf("-");
                if(plusIndex!=-1 && subIndex!=-1){
                    if(plusIndex>subIndex){
                        stringBuilder1.delete(plusIndex,plusIndex+1);
                        stringBuilder1.insert(plusIndex,"-");
                    }else{
                        stringBuilder1.delete(subIndex,subIndex+1);
                        stringBuilder1.insert(subIndex,"+");
                    }
                }else if(plusIndex==-1 & subIndex!=-1){
                    stringBuilder1.delete(subIndex,subIndex+1);
                    stringBuilder1.insert(subIndex,"+");
                }else if(plusIndex!=-1 && subIndex==-1){
                    stringBuilder1.delete(subIndex,subIndex+1);
                    stringBuilder1.insert(subIndex,"-");
                }else{
                    negativeTimes++;
                }
                newEquation=stringBuilder1.toString().replace("/-","/");
            }
        }
        if(newEquation.contains("+")){
            String[] addNumbers = newEquation.split("\\+");
            result=detailCal(addNumbers,projectId,entityId,"+");
        }else if(newEquation.contains("-")){
            String[] subNumbers = newEquation.split("-");
            result=detailCal(subNumbers,projectId,entityId,"-");
        }else if(newEquation.contains("*")){
            String[] multiplyNumbers = newEquation.split("\\*");
            result=detailCal(multiplyNumbers,projectId,entityId,"*");
        }else if(newEquation.contains("/")){
            String[] divNumbers = newEquation.split("/");
            result=detailCal(divNumbers,projectId,entityId,"/");
        }else if(newEquation.contains("SUM")){
            String sumString = newEquation.replace("SUM", "").replace("[", "").replace("]", "");
            result=sumCal(sumString,projectId,entityId);
        }

        if(negativeTimes%2==1){
            return result*-1;
        }
        return result;
    }

    private Float sumCal(String sumString, Long projectId, Long entityId) {
        String[] s = sumString.split(",");
        if(s.length==3){
            Long tableId=Long.parseLong(s[0]);
            Long attrId=Long.parseLong(s[1]);
            Long yearIndex=Long.parseLong(s[2]);
            List<Long> entityIds=valueVarcharService.selectEntityIdsByIds(projectId,tableId);
            float result=0f;
            for (Long id : entityIds) {
                if(id==null){
                    continue;
                }
                Entity entity = entityService.selectEntityById(id);
                if(entity.getIsProduct()==1){
                    Object value = valueVarcharService.selectValueByIds(projectId, attrId, tableId, id);
                    if(value==null){
                        return null;
                    }
                    String[] yearValueList = value.toString().replace("[", "").replace("]", "").replace(" ", "").split(",");
                    if (yearValueList.length>=yearIndex+1){
                        if(yearValueList[yearIndex.intValue()]!=""){
                            result+=Float.parseFloat(yearValueList[yearIndex.intValue()]);
                        }
                    }
                }
            }
            if(result!=0){
                return result;
            }
        }else if(s.length==2){
            Long tableId=Long.parseLong(s[0]);
            Long attrId=Long.parseLong(s[1]);
            Object value = valueVarcharService.selectValueByIds(projectId, attrId, tableId, entityId);
            if(value==null){
                return null;
            }
            Float result=0f;
            String sumValue = value.toString();
            String[] sumValueList = sumValue.replace("[", "").replace("]", "").replace(" ", "").split(",");
            for (String sValue : sumValueList) {
                if(sValue!=""){
                    float sumFloatValue = Float.parseFloat(sValue);
                    result+=sumFloatValue;
                }
            }
            if(result!=0){
                return result;
            }


        }
        return null;
    }

    private Float detailCal(String[] multiplyNumbers, Long projectId, Long entityId,String symbol) throws ScriptException {
        int length = multiplyNumbers.length;
        List<Float> multiplyNum=new ArrayList<>();
        for (String multiplyNumber : multiplyNumbers) {
            if(multiplyNumber.contains("+")||multiplyNumber.contains("-")||multiplyNumber.contains("*")||multiplyNumber.contains("/")||multiplyNumber.contains("SUM")){
                Float tmpResult=calculateOneValue(projectId,multiplyNumber,entityId);
                multiplyNum.add(tmpResult);
                continue;
            }
            if(multiplyNumber.contains("[")){
                multiplyNumber=multiplyNumber.replace("[","").replace("]","");
                String[] indexs = multiplyNumber.split(",");
                Long tableId = Long.parseLong(indexs[0]);
                Long attrId=Long.parseLong(indexs[1]);
                TableAttribute tableAttribute=tableAttributeService.selectTableAttributeByIds(tableId,attrId);
                //检测是否需要加上projectId
                Long projectRelated = tableAttribute.getProjectRelated();
                Long entityRelated = tableAttribute.getEntityRelated();
                if(entityId!=null){
                    Object values=null;
                    if(projectRelated==1 && entityRelated==1){
                        values = valueVarcharService.selectValueByIds(projectId, attrId, tableId, entityId);
                    }else if(projectRelated==0 && entityRelated==1){
                        values = valueVarcharService.selectValueByIds(null, attrId, tableId, entityId);
                    }else if(projectRelated==1 && entityRelated==0){
                        values = valueVarcharService.selectValueByIds(projectId, attrId, tableId, null);
                    }else{
                        values = valueVarcharService.selectValueByIds(null, attrId, tableId, null);
                    }

                    if(values==null){
                        return null;
                    }
                    if(indexs.length==3){
                        String yearValues = values.toString();
                        yearValues=yearValues.replace("[", "").replace("]", "").replace(" ", "");
                        String[] yearsStringValues = yearValues.split(",");
                        ScriptEngine js = new ScriptEngineManager().getEngineByName("JavaScript");
                        Integer yearIndex= (Integer) js.eval(indexs[2]);
                        if(yearsStringValues.length>=yearIndex+1){
                            if(yearsStringValues[yearIndex]!=""){
                                multiplyNum.add(Float.parseFloat(yearsStringValues[yearIndex]));
                            }
                        }else{
                            return null;
                        }
                    }else {
                        if(values.toString()!=""){
                            multiplyNum.add(Float.parseFloat(values.toString()));
                        }
                    }
                }else{
                    if(indexs.length==4){
                        entityId=Long.parseLong(indexs[2]);
                        Object values=null;
                        if(projectRelated==1 && entityRelated==1){
                            values = valueVarcharService.selectValueByIds(projectId, attrId, tableId, entityId);
                        }else if(projectRelated==0 && entityRelated==1){
                            values = valueVarcharService.selectValueByIds(null, attrId, tableId, entityId);
                        }else if(projectRelated==1 && entityRelated==0){
                            values = valueVarcharService.selectValueByIds(projectId, attrId, tableId, null);
                        }else{
                            values = valueVarcharService.selectValueByIds(null, attrId, tableId, null);
                        }
                        if(values==null){
                            return null;
                        }
                        String yearValues = values.toString();
                        yearValues=yearValues.replace("[", "").replace("]", "").replace(" ", "");
                        String[] yearsStringValues = yearValues.split(",");
                        ScriptEngine js = new ScriptEngineManager().getEngineByName("JavaScript");
                        Integer yearIndex= (Integer) js.eval(indexs[3]);
                        if(yearsStringValues.length>=yearIndex+1){
                            if(yearsStringValues[yearIndex]!=""){
                                multiplyNum.add(Float.parseFloat(yearsStringValues[yearIndex]));
                                entityId=null;
                            }
                        }else{
                            return null;
                        }
                    }
                }
            }else{
                multiplyNum.add(Float.parseFloat(multiplyNumber));
            }

        }

        if(multiplyNum.size()==length){
            if(multiplyNum.get(0)==null){
                return null;
            }
            float result=multiplyNum.get(0);
            if(symbol.equals("+")){
                for(int i=1;i<multiplyNum.size();i++){
                    if(multiplyNum.get(i)==null){
                        return null;
                    }
                    result=result+multiplyNum.get(i);
                }
            }else if(symbol.equals("-")){
                for(int i=1;i<multiplyNum.size();i++){
                    if(multiplyNum.get(i)==null){
                        return null;
                    }
                    result=result-multiplyNum.get(i);
                }
            }else if(symbol.equals("*")){
                for(int i=1;i<multiplyNum.size();i++){
                    if(multiplyNum.get(i)==null){
                        return null;
                    }
                    result=result*multiplyNum.get(i);
                }
            }else if(symbol.equals("/")){
                for(int i=1;i<multiplyNum.size();i++){
                    if(multiplyNum.get(i)==null){
                        return null;
                    }
                    result=result/multiplyNum.get(i);
                }
            }

            return result;
        }

        return null;
    }
}
