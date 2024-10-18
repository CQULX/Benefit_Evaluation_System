package com.ruoyi.web.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 entity
 * 
 * @author ruoyi
 * @date 2024-08-06
 */
@Data
public class Entity extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 实体ID */
    private Long id;

    /** 实体ID */
    private int projectSubcategoryId;

    /** 产品代码 */
    @Excel(name = "产品代码")
    private String entityCode;

    /** 实体名称 */
    @Excel(name = "实体名称")
    private String name;

    /** 规格型号 */
    @Excel(name = "规格型号")
    private String specification;

    private Integer isProduct;

    public Entity(int projectSubcategoryId) {
        this.projectSubcategoryId = projectSubcategoryId;
    }


    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("entitiyCode", getEntityCode())
            .append("name", getName())
            .append("specification", getSpecification())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }

}
