package com.ruoyi.web.controller.flow.strategy;

/**
 * 每一个公式的计算逻辑接口
 * @author lhf
 * @date 2024/8/22 10:46
 */
public interface equationStrategy {
    void compute(String equation, Object data, Object...args);
}
