package com.ruoyi.web.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 table_attribute
 * 
 * @author ruoyi
 * @date 2024-08-25
 */
@Data
public class TableAttribute extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long attributeId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long tableId;

    /** 标识属性是否和实体相关：0不相关、1相关,如果不相关则不作为列名 */
    @Excel(name = "标识属性是否和实体相关：0不相关、1相关,如果不相关则不作为列名")
    private Long entityRelated;

    private Long projectRelated;

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("attributeId", getAttributeId())
            .append("tableId", getTableId())
            .append("entityRelated", getEntityRelated())
            .toString();
    }
}
