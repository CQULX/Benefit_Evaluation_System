package com.ruoyi.web.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 project_subcategory
 * 
 * @author ruoyi
 * @date 2024-07-26
 */

@Data
public class ProjectSubcategory extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID:项目小类ID */
    private String id;

    /** 属于的项目大类的ID */
    @Excel(name = "属于的项目大类的ID")
    private Long projectCategoryId;

    /** 对应的模板的ID */
    @Excel(name = "对应的模板的ID")
    private Long templateId;

    /** 项目小类名称 */
    @Excel(name = "项目小类名称")
    private String projectSubcategoryName;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setProjectCategoryId(Long projectCategoryId) 
    {
        this.projectCategoryId = projectCategoryId;
    }

    public Long getProjectCategoryId() 
    {
        return projectCategoryId;
    }
    public void setTemplateId(Long templateId) 
    {
        this.templateId = templateId;
    }

    public Long getTemplateId() 
    {
        return templateId;
    }
    public void setProjectSubcategoryName(String projectSubcategoryName) 
    {
        this.projectSubcategoryName = projectSubcategoryName;
    }

    public String getProjectSubcategoryName() 
    {
        return projectSubcategoryName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("projectCategoryId", getProjectCategoryId())
            .append("templateId", getTemplateId())
            .append("projectSubcategoryName", getProjectSubcategoryName())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
