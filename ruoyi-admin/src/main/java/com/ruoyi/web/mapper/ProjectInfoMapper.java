package com.ruoyi.web.mapper;

import java.util.Date;
import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.web.domain.ProjectInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2024-07-26
 */
@Mapper
public interface ProjectInfoMapper extends BaseMapper<ProjectInfo>
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
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteProjectInfoById(String id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteProjectInfoByIds(String[] ids);

    /**
     * 根据项目信息ID查询子类ID
     * @param projectInfoId
     * @return
     */
    Long selectSubCategoryIdByProjectInfoId(Long projectInfoId);

    /**
     * 根据项目信息ID查询建设开始时间
     * @param projectInfoId
     * @return
     */
    Date selectCStartDateByProjectInfoId(Long projectInfoId);

    Long selectTemplateIdByProjectId(@Param("projectInfoId") Long projectInfoId);

    Object selectProjectProductInfoByIds(@Param("entityId") Long entityId, @Param("projectId") Long projectId);

    void saveProjectProductInfoByIds(@Param("entityId") Long entityId, @Param("projectId") Long projectId);

    List<Long> selectEntitesListByProjectInfoId(@Param("projectInfoId") Long projectInfoId);

    Object selectProjectEntityInfoByEntityId(@Param("projectId") Long projectId, @Param("entityId") Long entityId);

    void deleteProjectEntityInfoByEntityId(@Param("entityId") Long entityId);

    ProjectInfo selectTheLastProjectInfo();
}
