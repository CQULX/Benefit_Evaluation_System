package com.ruoyi.web.controller.flow.vo;

import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.Map;

/**
 * @author lhf
 * @date 2024/8/18 10:16
 */
@Data
@Builder
public class FlowAggregateVo {

    private String moduleName;

    private String tableName;

    private Integer rowOfTable;

    private List<String> attrNameList;

    private Map<String, List<String>> attrMap;

    private Map<String, List<String>> fixedAttrMap;

    private List<String> yearList;
}
