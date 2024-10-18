package com.ruoyi.web.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 equation
 * 
 * @author ruoyi
 * @date 2024-08-25
 */
public class Equation extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long tableId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long attributeId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long isProduct;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private Long entityId;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String equation;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setTableId(Long tableId) 
    {
        this.tableId = tableId;
    }

    public Long getTableId() 
    {
        return tableId;
    }
    public void setAttributeId(Long attributeId) 
    {
        this.attributeId = attributeId;
    }

    public Long getAttributeId() 
    {
        return attributeId;
    }
    public void setIsProduct(Long isProduct) 
    {
        this.isProduct = isProduct;
    }

    public Long getIsProduct() 
    {
        return isProduct;
    }
    public void setEntityId(Long entityId) 
    {
        this.entityId = entityId;
    }

    public Long getEntityId() 
    {
        return entityId;
    }
    public void setEquation(String equation) 
    {
        this.equation = equation;
    }

    public String getEquation() 
    {
        return equation;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("tableId", getTableId())
            .append("attributeId", getAttributeId())
            .append("isProduct", getIsProduct())
            .append("entityId", getEntityId())
            .append("equation", getEquation())
            .toString();
    }
}
