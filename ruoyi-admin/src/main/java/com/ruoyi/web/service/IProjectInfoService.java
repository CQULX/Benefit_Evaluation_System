package com.ruoyi.web.service;

import java.util.Date;
import java.util.List;
import java.util.Set;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.ProjectInfo;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2024-07-26
 */
public interface IProjectInfoService extends IService<ProjectInfo>
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public ProjectInfo selectProjectInfoById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param projectInfo 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<ProjectInfo> selectProjectInfoList(ProjectInfo projectInfo);

    /**
     * 新增【请填写功能名称】
     * 
     * @param projectInfo 【请填写功能名称】
     * @return 结果
     */
    public int insertProjectInfo(ProjectInfo projectInfo);

    /**
     * 修改【请填写功能名称】
     * 
     * @param projectInfo 【请填写功能名称】
     * @return 结果
     */
    public int updateProjectInfo(ProjectInfo projectInfo);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteProjectInfoByIds(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteProjectInfoById(String id);

    /**
     * 根据项目信息ID查询子类ID
     * @param projectInfoId
     * @return
     */
    public Long selectSubCategoryIdByProjectInfoId(Long projectInfoId);

    /**
     * 根据项目信息ID查询建设开始时间
     * @param projectInfoId
     * @return
     */
    Date selectCStartDateByProjectInfoId(Long projectInfoId);

    Long selectTemplateIdByProjectId(Long projectInfoId);

    void saveProductIds(Set<String> productSets, Long projectId);

    List<Long> selectEntitesListByProjectId(Long projectInfoId);

    Object selectProjectEntityInfoByEntityId(Long projectId, Long entityId);

    void deleteProjectEntityInfoByEntityId(Long entityId);

    ProjectInfo selectTheLastProjectInfo();
}
