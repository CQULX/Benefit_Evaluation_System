package com.ruoyi.web.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.ProjectCategoryMapper;
import com.ruoyi.web.domain.ProjectCategory;
import com.ruoyi.web.service.IProjectCategoryService;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-07-26
 */
@Service
public class ProjectCategoryServiceImpl extends ServiceImpl<ProjectCategoryMapper,ProjectCategory> implements IProjectCategoryService
{
    @Autowired
    private ProjectCategoryMapper projectCategoryMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public ProjectCategory selectProjectCategoryById(String id)
    {
        return projectCategoryMapper.selectProjectCategoryById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param projectCategory 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<ProjectCategory> selectProjectCategoryList(ProjectCategory projectCategory)
    {
        return projectCategoryMapper.selectProjectCategoryList(projectCategory);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param projectCategory 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertProjectCategory(ProjectCategory projectCategory)
    {
        projectCategory.setCreateTime(DateUtils.getNowDate());
        return projectCategoryMapper.insertProjectCategory(projectCategory);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param projectCategory 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateProjectCategory(ProjectCategory projectCategory)
    {
        projectCategory.setUpdateTime(DateUtils.getNowDate());
        return projectCategoryMapper.updateProjectCategory(projectCategory);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteProjectCategoryByIds(String[] ids)
    {
        return projectCategoryMapper.deleteProjectCategoryByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteProjectCategoryById(String id)
    {
        return projectCategoryMapper.deleteProjectCategoryById(id);
    }
}
