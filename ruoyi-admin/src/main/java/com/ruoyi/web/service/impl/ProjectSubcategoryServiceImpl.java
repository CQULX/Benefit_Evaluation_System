package com.ruoyi.web.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.ProjectSubcategoryMapper;
import com.ruoyi.web.domain.ProjectSubcategory;
import com.ruoyi.web.service.IProjectSubcategoryService;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-07-26
 */
@Service
public class ProjectSubcategoryServiceImpl extends ServiceImpl<ProjectSubcategoryMapper,ProjectSubcategory> implements IProjectSubcategoryService
{
    @Autowired
    private ProjectSubcategoryMapper projectSubcategoryMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public ProjectSubcategory selectProjectSubcategoryById(String id)
    {
        return projectSubcategoryMapper.selectProjectSubcategoryById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param projectSubcategory 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<ProjectSubcategory> selectProjectSubcategoryList(ProjectSubcategory projectSubcategory)
    {
        return projectSubcategoryMapper.selectProjectSubcategoryList(projectSubcategory);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param projectSubcategory 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertProjectSubcategory(ProjectSubcategory projectSubcategory)
    {
        projectSubcategory.setCreateTime(DateUtils.getNowDate());
        return projectSubcategoryMapper.insertProjectSubcategory(projectSubcategory);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param projectSubcategory 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateProjectSubcategory(ProjectSubcategory projectSubcategory)
    {
        projectSubcategory.setUpdateTime(DateUtils.getNowDate());
        return projectSubcategoryMapper.updateProjectSubcategory(projectSubcategory);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteProjectSubcategoryByIds(String[] ids)
    {
        return projectSubcategoryMapper.deleteProjectSubcategoryByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteProjectSubcategoryById(String id)
    {
        return projectSubcategoryMapper.deleteProjectSubcategoryById(id);
    }
}
