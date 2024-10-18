package com.ruoyi.web.controller.flow.strategy.impl;

import com.ruoyi.web.controller.flow.param.FlowComputeParam;
import com.ruoyi.web.controller.flow.strategy.equationStrategy;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

/**
 * @author lhf
 * @date 2024/8/22 10:47
 */
@Slf4j
@Component("sum_row")
public class sumRowStrategy implements equationStrategy {

    @Override
    public void compute(String equation, Object data, Object...args) {
        if(data instanceof FlowComputeParam.FlowLineObj){
            FlowComputeParam.FlowLineObj flowLineObj = (FlowComputeParam.FlowLineObj) data;
            flowLineObj.setAmount(flowLineObj.getYearDataList().stream().mapToDouble(Double::doubleValue).sum());
            log.info("{} 行金额(含税)计算结果: {}", flowLineObj.getType(), flowLineObj.getAmount());
        }else{
            log.info("传入的数据对象类型错误");
        }
    }
}
