package com.ruoyi.web.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import org.springframework.boot.convert.DataSizeUnit;

/**
 * 【请填写功能名称】对象 project_info
 * 
 * @author ruoyi
 * @date 2024-07-26
 */

@Data
public class ProjectInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键ID */
    private Long id;

    /** 单位及人员ID */
    @Excel(name = "单位及人员ID")
    private Long unitPersonId;

    /** AI产品类 */
    @Excel(name = "AI产品类")
    private String projectType;

    /** 项目大类 */
    @Excel(name = "项目大类")
    private Long projectCategoryId;

    /** 项目小类 */
    @Excel(name = "项目小类")
    private Long projectSubcategoryId;

    /** 同上会议题名称 */
    @Excel(name = "同上会议题名称")
    private String projectName;

    /** 此系统中项目编号 */
    @Excel(name = "此系统中项目编号")
    private String projectNumber;

    /** 本次道路建设预计的起始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "本次道路建设预计的起始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date constructionStartDate;

    /** 本次道路建设预计的结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "本次道路建设预计的结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date constructionEndDate;

    /** 建设完成日期 - 建设开始日期 */
    @Excel(name = "建设完成日期 - 建设开始日期")
    private Long constructionDurationYears;

    /** 本次道路使用的起始时间，即有收入的第一个月份，需晚于“建设开始日期” */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "本次道路使用的起始时间，即有收入的第一个月份，需晚于“建设开始日期”", width = 30, dateFormat = "yyyy-MM-dd")
    private Date evaluationStartDate;

    /** 本次A道路使用的结束时间，即纳收的最后一个月，需晚于“建设完成日期” */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "本次A道路使用的结束时间，即纳收的最后一个月，需晚于“建设完成日期”", width = 30, dateFormat = "yyyy-MM-dd")
    private Date evaluationEndDate;

    /** 本次道路的整体评估期间 */
    @Excel(name = "本次道路的整体评估期间")
    private Long projectEvaluationDurationYears;

    /** 本次道路中单批投产资产的评估期间 */
    @Excel(name = "本次道路中单批投产资产的评估期间")
    private Long singleBatchAssetEvaluationDurationYears;

    /** 简要介绍项目的基本信息，包括项目背景、项目周期、需求内容、需求数量和金额等进行简要概述 */
    @Excel(name = "简要介绍项目的基本信息，包括项目背景、项目周期、需求内容、需求数量和金额等进行简要概述")
    private String projectDescription;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setUnitPersonId(Long unitPersonId)
    {
        this.unitPersonId = unitPersonId;
    }

    public Long getUnitPersonId()
    {
        return unitPersonId;
    }
    public void setProjectType(String projectType) 
    {
        this.projectType = projectType;
    }

    public String getProjectType() 
    {
        return projectType;
    }
    public void setProjectCategoryId(Long projectCategoryId)
    {
        this.projectCategoryId = projectCategoryId;
    }

    public Long getProjectCategoryId()
    {
        return projectCategoryId;
    }
    public void setProjectSubcategoryId(Long projectSubcategoryId)
    {
        this.projectSubcategoryId = projectSubcategoryId;
    }

    public Long getProjectSubcategoryId()
    {
        return projectSubcategoryId;
    }
    public void setProjectName(String projectName) 
    {
        this.projectName = projectName;
    }

    public String getProjectName() 
    {
        return projectName;
    }
    public void setProjectNumber(String projectNumber) 
    {
        this.projectNumber = projectNumber;
    }

    public String getProjectNumber() 
    {
        return projectNumber;
    }
    public void setConstructionStartDate(Date constructionStartDate) 
    {
        this.constructionStartDate = constructionStartDate;
    }

    public Date getConstructionStartDate() 
    {
        return constructionStartDate;
    }
    public void setConstructionEndDate(Date constructionEndDate) 
    {
        this.constructionEndDate = constructionEndDate;
    }

    public Date getConstructionEndDate() 
    {
        return constructionEndDate;
    }
    public void setConstructionDurationYears(Long constructionDurationYears) 
    {
        this.constructionDurationYears = constructionDurationYears;
    }

    public Long getConstructionDurationYears() 
    {
        return constructionDurationYears;
    }
    public void setEvaluationStartDate(Date evaluationStartDate) 
    {
        this.evaluationStartDate = evaluationStartDate;
    }

    public Date getEvaluationStartDate() 
    {
        return evaluationStartDate;
    }
    public void setEvaluationEndDate(Date evaluationEndDate) 
    {
        this.evaluationEndDate = evaluationEndDate;
    }

    public Date getEvaluationEndDate() 
    {
        return evaluationEndDate;
    }
    public void setProjectEvaluationDurationYears(Long projectEvaluationDurationYears) 
    {
        this.projectEvaluationDurationYears = projectEvaluationDurationYears;
    }

    public Long getProjectEvaluationDurationYears() 
    {
        return projectEvaluationDurationYears;
    }
    public void setSingleBatchAssetEvaluationDurationYears(Long singleBatchAssetEvaluationDurationYears) 
    {
        this.singleBatchAssetEvaluationDurationYears = singleBatchAssetEvaluationDurationYears;
    }

    public Long getSingleBatchAssetEvaluationDurationYears() 
    {
        return singleBatchAssetEvaluationDurationYears;
    }
    public void setProjectDescription(String projectDescription) 
    {
        this.projectDescription = projectDescription;
    }

    public String getProjectDescription() 
    {
        return projectDescription;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("unitPersonId", getUnitPersonId())
            .append("projectType", getProjectType())
            .append("projectCategoryId", getProjectCategoryId())
            .append("projectSubcategoryId", getProjectSubcategoryId())
            .append("projectName", getProjectName())
            .append("projectNumber", getProjectNumber())
            .append("constructionStartDate", getConstructionStartDate())
            .append("constructionEndDate", getConstructionEndDate())
            .append("constructionDurationYears", getConstructionDurationYears())
            .append("evaluationStartDate", getEvaluationStartDate())
            .append("evaluationEndDate", getEvaluationEndDate())
            .append("projectEvaluationDurationYears", getProjectEvaluationDurationYears())
            .append("singleBatchAssetEvaluationDurationYears", getSingleBatchAssetEvaluationDurationYears())
            .append("projectDescription", getProjectDescription())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
