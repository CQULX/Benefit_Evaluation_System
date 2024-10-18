package com.ruoyi.web.controller.tool;

import com.ruoyi.web.domain.Attribute;
import com.ruoyi.web.domain.Entity;
import com.ruoyi.web.domain.Table;
import com.ruoyi.web.service.IAttributeService;
import com.ruoyi.web.service.IEntityService;
import com.ruoyi.web.service.IValueVarcharService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class JsonBuilder {

    @Autowired
    IEntityService entityService;

    @Autowired
    IAttributeService attributeService;

    @Autowired
    IValueVarcharService valueVarcharService;

    /**
     * 构建前端页面配置的json数据
     *
     * @param attributeIdUnion 属性ID列表
     * @param entities         实体列表
     * @param buildStartTime   建设开始时间
     * @param buildDuration    建设时长
     * @param tables           表列表
     * @param entitesIds       实体ID列表
     * @param projectInfoId    项目ID
     *
     * @return 构建后的json数据
     */
    public Map<String, Object> buildJsonData(Date buildStartTime, Long buildDuration, Date evalStartTime,
            Long evalDuration, List<Long> attributeIdUnion, List<Entity> entities,
            List<Table> tables, List<Long> entitesIds, Long projectInfoId) {
        Map<String, Object> data = new LinkedHashMap<>();

        data.put("build_start_year", buildStartTime);
        data.put("build_year", buildDuration);
        data.put("eval_start_years", evalStartTime);
        data.put("eval_year", evalDuration);
        data.put("entity_name_list", entities);

        Map<String, Object> tableData = buildJsonTableData(tables, buildDuration, evalDuration,attributeIdUnion, entitesIds,
                projectInfoId);
        data.put("tableData", tableData);
        return data;
    }

    /**
     * 构建JSON表格数据
     *
     * @param tables           表格列表
     * @param buildDuration    构建持续时间
     * @param attributeIdUnion 属性ID列表
     * @param entitiesIds      实体ID列表
     * @param projectInfoId    项目信息ID
     * @return 返回构建的JSON表格数据，包含表格和相关实体的信息
     */
    public Map<String, Object> buildJsonTableData(List<Table> tables, Long buildDuration, Long evalDuration,
            List<Long> attributeIdUnion, List<Long> entitiesIds, Long projectInfoId) {

        // 用于存放最终的JSON数据
        Map<String, Object> resultList = new LinkedHashMap<>();
        // 用于存放表格行数据
        List<Map<String, Object>> rowList = new ArrayList<>();
        // 获取属性信息列表（attribute根据属性ID列表来获得）
        List<Attribute> attributes = attributeService.selectAttributeByIds(attributeIdUnion);
        // 与实体无关的属性名称集合,属于所有表的属性的并集
//        Set<String> nonEntityRelatedAttributesNames = new LinkedHashSet<>();
        // 与实体相关的属性名称集合，属于所有表的并集
        Set<String> allEntityRelatedAttributesNames = new LinkedHashSet<>();
        Map<String, Object> nonEntityRelatedAttributes =new HashMap<>();
        // 遍历表格列表，为每个表格构建行数据
        for (Table table : tables) {

            // 与实体相关的属性名称，属于某一个表
            Set<String> entityRelatedAttributesNames = new LinkedHashSet<>();
            for (Attribute attribute : attributes) {
                String attributeName = attribute.getName();
                // 通过表ID和属性ID获取属性的entity_related（是否与实体相关，即是否作为列名），如双向双车道道路、6%税率投资额
                Integer EntityRelated = attributeService.selectEntityRelatedByTableIdAndAttributeId(table.getId(),
                        attribute.getId());
                if(EntityRelated==null){
                    continue;
                }
                if (EntityRelated == 0) {
                    // 非实体相关的属性
                    // nonEntityRelatedAttributesNames.add(attributeName);
                    // 为与实体无关的属性构建数据
                    Object value = valueVarcharService.selectValueByIds(projectInfoId, attribute.getId(), table.getId(),
                            null);
                    nonEntityRelatedAttributes.put(attributeName, value != null ? value.toString() : "");
                } else {
                    // 实体相关的属性
                    entityRelatedAttributesNames.add(attributeName);
                    allEntityRelatedAttributesNames.add(attributeName);
                }
            }
            // 创建一个Map来存储每个表的信息
            Map<String, Object> tableInfo = new LinkedHashMap<>();
            // 获取表格是否与产品相关
            Integer entityRelated = table.getEntityRelated();
            Long tableId = table.getId();

            // 获取表格是否与时间相关，用于后续行数据的构造
            Integer timeRelated = table.getTimeRelated();
            Long timeDuration = null;
            // 1:建设时间 2:评估时间
            if (timeRelated == 1) {
                timeDuration = buildDuration;
            } else if (timeRelated == 2) {
                timeDuration = evalDuration;
            }

            // 填充Map中的信息
            tableInfo.put("类型", table.getName()); // 表名作为type
            // 标识表格是否和产品相关
            tableInfo.put("EntityRelated", entityRelated); // entity_related
            // 标识表格的列名生成是否与时间相关，0表示不与时间相关，1表示与建设时间相关，2表示与评估时间相关
            tableInfo.put("TimeRelated", table.getTimeRelated()); // time_related
            // 标识该表格是否为合计表
            tableInfo.put("isTotal", table.getIsTotal()); // is_total
            tableInfo.put("isHeader", true); // 固定值
            tableInfo.put("isEdit", false); // 固定值

            // 将这个Map添加到结果列表中
            rowList.add(tableInfo);

            // 判断表是否和产品相关
            if (entityRelated == 1) {
                if (entitiesIds == null || entitiesIds.size() == 0) {
                    Map<String, Object> RowInfo = getBlankRows(timeDuration, entityRelatedAttributesNames);
                    rowList.add(RowInfo);
                } else {
                    // 遍历产品ID列表，为每个实体构建行数据
                    for (Long entityId : entitiesIds) {

                        Integer isEdit = entityService.selectIsEditsByTableIdAndEntityId(tableId, entityId);
                        // 判断该实体是否有值
                        Long count = valueVarcharService.validHasValueByIds(projectInfoId, tableId, entityId);
                        Boolean hasValue = null;
                        if (count == 0) {
                            hasValue = false;
                        } else {
                            hasValue = true;
                        }
                        // 构建每一行的信息
                        Map<String, Object> RowInfo = getEntityRows(timeDuration, entityId, isEdit,
                                entityRelatedAttributesNames, 1,
                                tableId, projectInfoId, hasValue);

                        // 将生成的 RowInfo 添加到结果列表中
                        rowList.add(RowInfo);

                    }
                }
            }

            // 处理非产品实体
            // 获取和产品关联的实体ID列表：is_product=0
            List<Long> entityIds = entityService.selectNonProductEntityIdsByTableId(tableId);
            List<Integer> isEdits = entityService.selectNonProductIsEditsByTableId(tableId);
            for (int i = 0; i < entityIds.size(); i++) {

                Long entityId = entityIds.get(i);
                Integer isEdit = isEdits.get(i);

                // 构建每一行的信息
                Map<String, Object> RowInfo = getEntityRows(timeDuration, entityId, isEdit,
                        entityRelatedAttributesNames, 0, tableId,
                        projectInfoId, false);

                // 将生成的 RowInfo 添加到结果列表中
                rowList.add(RowInfo);

            }

        }

        // 为与实体无关的属性构建数据
        // Map<String, Object> nonEntityRelatedAttributes =
        // buildAttributesMap(nonEntityRelatedAttributesNames);

        // 将结果列表分成三部分添加到结果Map中
        resultList.put("rowData", rowList);
        resultList.put("formData", nonEntityRelatedAttributes);
        resultList.put("attributeData", allEntityRelatedAttributesNames);
        System.out.println(resultList);

        return resultList;
    }

    /**
     * 根据属性名称集合构建属性数据
     *
     * @param attributeNames 属性名称集合
     * @return Map<String, Object> 构建后的属性数据
     */
    public Map<String, Object> buildAttributesMap(Set<String> attributeNames) {
        Map<String, Object> attributesMap = new LinkedHashMap<>();
        for (String attributeName : attributeNames) {
            attributesMap.put(attributeName, "");
        }
        return attributesMap;
    }

    /**
     * 构建空行数据
     *
     * @param timeDuration                 时间持续时间
     * @param entityRelatedAttributesNames 与实体相关的属性名称
     * @return 返回填充了空属性值的行Map
     */
    private Map<String, Object> getBlankRows(Long timeDuration, Set<String> entityRelatedAttributesNames) {

        // 假设这里没有实际数据填充
        Map<String, Object> row = new HashMap<>();
        for (String attributeName : entityRelatedAttributesNames) {
            if (attributeName.equals("年份")) {

                for (int i = 0; i < timeDuration; i++) {
                    row.put("year" + i, ""); // 示例数据
                }
            } else {
                row.put(attributeName, "");
            }
        }
        row.put("isHeader", false);
        row.put("isEdit", true);
        row.put("isProduct", 1);

        return row;
    }

    /**
     * 根据实体名称和其他参数获取实体行数据
     *
     * @param timeDuration                 时间持续时间
     * @param entityId                     实体ID
     * @param isEdit                       是否可编辑
     * @param entityRelatedAttributesNames 与实体相关的属性名称
     * @param isProduct                    是否为产品
     * @param tableId                      表ID
     * @param projectInfoId                项目信息ID
     * @return 返回填充的实体行数据
     */
    private Map<String, Object> getEntityRows(Long timeDuration, Long entityId, Integer isEdit,
            Set<String> entityRelatedAttributesNames, Integer isProduct, Long tableId, Long projectInfoId,
            Boolean hasValue) {

        // 假设这里有实际数据填充
        Map<String, Object> row = new HashMap<>();
        for (String attributeName : entityRelatedAttributesNames) {
            Long attributeId = attributeService.selectAttributeIdByAttributeName(attributeName);
            Object value = valueVarcharService.selectValueByIds(projectInfoId, attributeId, tableId, entityId);
            // 根据属性名称处理数据
            //if (attributeName.equals("类型") && !hasValue) {
            if (attributeName.equals("类型")) {
                Entity entity = entityService.selectEntityById(entityId);
                if(isProduct==0){
                    String entityName = entity.getName();
                    row.put(attributeName, entityName);
                }else{
                    String entityName=entity.getName()+" "+entity.getEntityCode();
                    row.put(attributeName,entityName);
                }

            } else if (attributeName.equals("年份")) {
                String[] year = null;
                if (value == null) {
                    year = new String[] {};
                } else {
                    String yearString = value.toString();
                    yearString = yearString.replace("[", "").replace("]", "").replace(" ", "");
                    year = yearString.split(",");
                }

                for (int i = 0; i < timeDuration; i++) {
                    String key = "year" + i;
                    String yearValue = (i < year.length) ? year[i] : "";
                    row.put(key, yearValue);
                }
            } else {
                row.put(attributeName, value != null ? value.toString() : "");

            }
        }
        row.put("isHeader", false);
        row.put("isEdit", isEdit);
        row.put("isProduct", isProduct);

        return row;
    }

}
