package com.ruoyi.web.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Set;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.web.service.IEntityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.ProjectInfoMapper;
import com.ruoyi.web.domain.ProjectInfo;
import com.ruoyi.web.service.IProjectInfoService;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-07-26
 */
@Service
public class ProjectInfoServiceImpl extends ServiceImpl<ProjectInfoMapper,ProjectInfo> implements IProjectInfoService
{
    @Autowired
    private ProjectInfoMapper projectInfoMapper;

    @Autowired
    IEntityService entityService;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public ProjectInfo selectProjectInfoById(Long id)
    {
        return projectInfoMapper.selectProjectInfoById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param projectInfo 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<ProjectInfo> selectProjectInfoList(ProjectInfo projectInfo)
    {
        return projectInfoMapper.selectProjectInfoList(projectInfo);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param projectInfo 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertProjectInfo(ProjectInfo projectInfo)
    {
        projectInfo.setCreateTime(DateUtils.getNowDate());
        projectInfo.setProjectDescription("新项目"+projectInfo.getProjectNumber());
        projectInfo.setUpdateTime(DateUtils.getNowDate());
        return projectInfoMapper.insertProjectInfo(projectInfo);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param projectInfo 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateProjectInfo(ProjectInfo projectInfo)
    {
        projectInfo.setUpdateTime(DateUtils.getNowDate());
        return projectInfoMapper.updateProjectInfo(projectInfo);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteProjectInfoByIds(String[] ids)
    {
        return projectInfoMapper.deleteProjectInfoByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteProjectInfoById(String id)
    {
        return projectInfoMapper.deleteProjectInfoById(id);
    }

    @Override
    public Long selectSubCategoryIdByProjectInfoId(Long projectInfoId) {
//        QueryWrapper<ProjectInfo> wrapper= new QueryWrapper<>();
//        wrapper.eq("id",projectInfoId);
//        ProjectInfo projectInfo = this.baseMapper.selectOne(wrapper);
//        Long projectSubcategoryId = projectInfo.getProjectSubcategoryId();
//        return projectSubcategoryId;
          return projectInfoMapper.selectSubCategoryIdByProjectInfoId(projectInfoId);
    }

    /**
     * 根据项目信息ID查询建设开始时间
     * @param projectInfoId
     * @return
     */

    @Override
    public Date selectCStartDateByProjectInfoId(Long projectInfoId) {
        return projectInfoMapper.selectCStartDateByProjectInfoId(projectInfoId);
    }

    @Override
    public Long selectTemplateIdByProjectId(Long projectInfoId) {

        return projectInfoMapper.selectTemplateIdByProjectId(projectInfoId);
    }

    @Override
    public void saveProductIds(Set<String> productSets, Long projectId) {
        for (String productSet : productSets) {
            Long entityId = entityService.selectEntityIdByProductCode(productSet);
            Object line=this.projectInfoMapper.selectProjectProductInfoByIds(entityId,projectId);
            if(line==null){
                this.projectInfoMapper.saveProjectProductInfoByIds(entityId,projectId);
            }

        }

    }

    @Override
    public List<Long> selectEntitesListByProjectId(Long projectInfoId) {
        List<Long> entityIds=this.projectInfoMapper.selectEntitesListByProjectInfoId(projectInfoId);
        System.out.println(entityIds);
        return entityIds;
    }

    @Override
    public Object selectProjectEntityInfoByEntityId(Long projectId, Long entityId) {
        return this.projectInfoMapper.selectProjectEntityInfoByEntityId(projectId,entityId);
    }

    @Override
    public void deleteProjectEntityInfoByEntityId(Long entityId) {
        this.projectInfoMapper.deleteProjectEntityInfoByEntityId(entityId);
    }

    @Override
    public ProjectInfo selectTheLastProjectInfo() {
        return this.baseMapper.selectTheLastProjectInfo();
    }


}
