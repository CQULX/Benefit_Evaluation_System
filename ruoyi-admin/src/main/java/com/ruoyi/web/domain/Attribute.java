package com.ruoyi.web.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 attribute
 * 
 * @author ruoyi
 * @date 2024-08-18
 */
@Data
public class Attribute extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 属性ID */
    private Long id;

    /** 属性名称 */
    @Excel(name = "属性名称")
    private String name;

    /** 属性值的类型 */
    @Excel(name = "属性值的类型")
    private String type;

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("name", getName())
            .append("type", getType())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
