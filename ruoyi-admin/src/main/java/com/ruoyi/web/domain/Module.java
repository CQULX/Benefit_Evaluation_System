package com.ruoyi.web.domain;

import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

import java.util.Date;

@Data
public class Module extends BaseEntity{

    private Long id;           // 模块ID
    private Long templateId;   // 属于的模板id
    private int pageIndex;         // 模块所在页数
    private String name;       // 模块名称
    private Date createTime;  // 创建时间
    private Date updateTime;  // 修改时间

    // 构造方法
    public Module() {}

    public Module(Long id, Long templateId, int pageIndex, String name, Date createTime, Date updateTime) {
        this.id = id;
        this.templateId = templateId;
        this.pageIndex = pageIndex;
        this.name = name;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTemplateId() {
        return templateId;
    }

    public void setTemplateId(Long templateId) {
        this.templateId = templateId;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override
    public String toString() {
        return "Module{" +
                "id=" + id +
                ", templateId=" + templateId +
                ", pageIndex=" + pageIndex +
                ", name='" + name + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }
}
