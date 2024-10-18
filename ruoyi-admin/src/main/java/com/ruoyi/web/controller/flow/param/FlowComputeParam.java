package com.ruoyi.web.controller.flow.param;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/**
 * @author lhf
 * @date 2024/8/21 17:25
 */
@Data
public class FlowComputeParam {

    private List<FlowLineObj> flowLineObjList;

    private String discountRate;

    private String taxRate;

    /**
     * table的每一行
     * @date 2024/8/21 22:02
     */
    @Data
    public static class FlowLineObj{
        private Long id;
        @JsonProperty("序号")
        private Integer number;
        @JsonProperty("类型")
        private String type;
        @JsonProperty("金额（含税）")
        private Double amount;

        private List<Double> yearDataList;

        private Boolean isEdit;
    }

}
