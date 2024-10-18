package com.ruoyi.web.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 【请填写功能名称】对象 unit_personnel_info
 * 
 * @author ruoyi
 * @date 2024-07-22
 */

@Data
public class UnitPersonnelInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 市公司 */
    @Excel(name = "市公司")
    private String companyName;

    /** 部门 */
    @Excel(name = "部门")
    private String subordinateUnitName;

    /** 登录人 */
    @Excel(name = "登录人")
    private String filler;

    /** 登录人手机号 */
    @Excel(name = "登录人手机号")
    private String fillerContact;

    /** 主责部门 */
    @Excel(name = "主责部门")
    private String projectResponsibleUnit;

    /** 主要责任人 */
    @Excel(name = "主要责任人")
    private String projectResponsiblePerson;

    /** 主要责任人手机号 */
    @Excel(name = "主要责任人手机号")
    private String projectResponsibleContact;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setCompanyName(String companyName) 
    {
        this.companyName = companyName;
    }

    public String getCompanyName() 
    {
        return companyName;
    }
    public void setSubordinateUnitName(String subordinateUnitName) 
    {
        this.subordinateUnitName = subordinateUnitName;
    }

    public String getSubordinateUnitName() 
    {
        return subordinateUnitName;
    }
    public void setFiller(String filler) 
    {
        this.filler = filler;
    }

    public String getFiller() 
    {
        return filler;
    }
    public void setFillerContact(String fillerContact) 
    {
        this.fillerContact = fillerContact;
    }

    public String getFillerContact() 
    {
        return fillerContact;
    }
    public void setProjectResponsibleUnit(String projectResponsibleUnit) 
    {
        this.projectResponsibleUnit = projectResponsibleUnit;
    }

    public String getProjectResponsibleUnit() 
    {
        return projectResponsibleUnit;
    }
    public void setProjectResponsiblePerson(String projectResponsiblePerson) 
    {
        this.projectResponsiblePerson = projectResponsiblePerson;
    }

    public String getProjectResponsiblePerson() 
    {
        return projectResponsiblePerson;
    }
    public void setProjectResponsibleContact(String projectResponsibleContact) 
    {
        this.projectResponsibleContact = projectResponsibleContact;
    }

    public String getProjectResponsibleContact() 
    {
        return projectResponsibleContact;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("companyName", getCompanyName())
            .append("subordinateUnitName", getSubordinateUnitName())
            .append("filler", getFiller())
            .append("fillerContact", getFillerContact())
            .append("projectResponsibleUnit", getProjectResponsibleUnit())
            .append("projectResponsiblePerson", getProjectResponsiblePerson())
            .append("projectResponsibleContact", getProjectResponsibleContact())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
