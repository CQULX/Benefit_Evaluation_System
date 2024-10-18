package com.ruoyi.web.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import com.ruoyi.common.core.domain.BaseEntity;
import lombok.Data;

import java.util.Date;

@Data
@TableName("`table`")
public class Table extends BaseEntity{
    private Long id;              // 表ID
    private Integer moduleId;        // 属于的模块的ID
    private String name;             // 表名
    private Date createTime;         // 创建时间
    private Date updateTime;         // 修改时间
    private Integer entityRelated;   // 关联的实体
    private Integer isTotal;         // 是否是汇总表
    private Integer timeRelated;   // 是否与时间有关

    // 无参构造方法
    public Table() {}

    // 全参构造方法
    public Table(Long id, Integer moduleId, String name, Date createTime, Date updateTime, Integer entityRelated, Integer isTotal) {
        this.id = id;
        this.moduleId = moduleId;
        this.name = name;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.entityRelated = entityRelated;
        this.isTotal = isTotal;
    }

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getModuleId() {
        return moduleId;
    }

    public void setModuleId(Integer moduleId) {
        this.moduleId = moduleId;
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

    public Integer getEntityRelated() {
        return entityRelated;
    }

    public void setEntityRelated(Integer entityRelated) {
        this.entityRelated = entityRelated;
    }

    public Integer getIsTotal() {
        return isTotal;
    }

    public void setIsTotal(Integer isTotal) {
        this.isTotal = isTotal;
    }

    public Integer getTimeRelated() {
        return timeRelated;
    }

    public void setTimeRelated(Integer timeRelated) {
        this.timeRelated = timeRelated;
    }

    @Override
    public String toString() {
        return "Table{" +
                "id=" + id +
                ", moduleId=" + moduleId +
                ", name='" + name + '\'' +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", entityRelated=" + entityRelated +
                ", isTotal=" + isTotal +
                ", timeRelated=" + timeRelated +
                '}';
    }
}
