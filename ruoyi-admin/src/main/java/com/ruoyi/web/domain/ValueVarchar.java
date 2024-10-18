package com.ruoyi.web.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 value_varchar
 * 
 * @author ruoyi
 * @date 2024-08-18
 */
@Data
public class ValueVarchar extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID（但感觉没啥用） */
    private Long id;

    /** 属于的项目的ID */
    @Excel(name = "属于的项目的ID")
    private Long projectInfoId;

    /** 属于的表的ID */
    @Excel(name = "属于的表的ID")
    private Long tableId;

    /** 属于的实体的ID */
    @Excel(name = "属于的实体的ID")
    private Long projectEntityId;

    /** 属于的属性的ID */
    @Excel(name = "属于的属性的ID")
    private Long attributeId;

    /** varchar类型的属性值 */
    @Excel(name = "varchar类型的属性值")
    private String value;

    private String equation;
    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("projectId", getProjectInfoId())
            .append("tableId", getTableId())
            .append("entityId", getProjectEntityId())
            .append("attributeId", getAttributeId())
            .append("value", getValue())
            .append("equation", getEquation())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
