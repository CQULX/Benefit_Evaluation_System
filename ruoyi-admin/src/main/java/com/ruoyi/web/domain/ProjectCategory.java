package com.ruoyi.web.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 project_category
 * 
 * @author ruoyi
 * @date 2024-07-26
 */

@Data
public class ProjectCategory extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID：项目大类ID */
    private String id;

    /** 项目大类名称 */
    @Excel(name = "项目大类名称")
    private String projectCategoryName;

    public void setId(String id) 
    {
        this.id = id;
    }

    public String getId() 
    {
        return id;
    }
    public void setProjectCategoryName(String projectCategoryName) 
    {
        this.projectCategoryName = projectCategoryName;
    }

    public String getProjectCategoryName() 
    {
        return projectCategoryName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("projectCategoryName", getProjectCategoryName())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
