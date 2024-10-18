package com.ruoyi.web.controller.flow.strategy.impl;

import com.ruoyi.web.controller.flow.param.FlowComputeParam;
import com.ruoyi.web.controller.flow.strategy.equationStrategy;
import com.ruoyi.web.domain.ValueVarchar;
import com.ruoyi.web.mapper.AttributeMapper;
import com.ruoyi.web.mapper.ValueVarcharMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lhf
 * @date 2024/8/22 10:55
 */
@Slf4j
@Component("mul")
public class MulStrategy implements equationStrategy {
    @Resource
    ValueVarcharMapper valueVarcharMapper;

    @Resource
    AttributeMapper attributeMapper;
    @Override
    public void compute(String equation, Object data, Object...args) {
        // 当前行数据
        FlowComputeParam.FlowLineObj currentFlowLineObj = null;
        if(args.length !=0 && args[0] instanceof FlowComputeParam.FlowLineObj){
            currentFlowLineObj = (FlowComputeParam.FlowLineObj) args[0];
        }
        if(data instanceof FlowComputeParam){
            FlowComputeParam flowComputeParam = (FlowComputeParam) data;
            String[] equationParts = equation.split(" ");
            String sourceId = equationParts[1];
            String targetId = equationParts[2];
            ValueVarchar source = valueVarcharMapper.selectValueVarcharById(sourceId);
            ValueVarchar target = valueVarcharMapper.selectValueVarcharById(targetId);
            String attrName = attributeMapper.selectAttributeByid(String.valueOf(target.getAttributeId())).getName();
            Double mulFactor = null;
            if(attrName.equals("折现率")){
                mulFactor = Double.parseDouble(flowComputeParam.getDiscountRate());
            }else if(attrName.equals("审定税率")){
                mulFactor = Double.parseDouble(flowComputeParam.getTaxRate());

            }
            FlowComputeParam.FlowLineObj sourceLineObj = null;
            // 找到需要乘的行
            for(FlowComputeParam.FlowLineObj flowLineObj : flowComputeParam.getFlowLineObjList()){
                if(flowLineObj.getType().equals(source.getValue())){
                    sourceLineObj = flowLineObj;
                }
            }
            if(sourceLineObj != null){
                currentFlowLineObj.setAmount(sourceLineObj.getAmount() * mulFactor);
                List<Double> yearDataList = new ArrayList(sourceLineObj.getYearDataList().size());
                for(Double yearData : sourceLineObj.getYearDataList()){
                    yearDataList.add(yearData * mulFactor);
                }
                currentFlowLineObj.setYearDataList(yearDataList);
            }
            log.info("{} 行计算结果: 金额（含税） {}, 每年流水数据 {} ", currentFlowLineObj.getType(), currentFlowLineObj.getAmount(), currentFlowLineObj.getYearDataList());

        }else{
            log.info("传入的数据对象类型错误");
        }
    }
}
