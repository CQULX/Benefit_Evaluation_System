package com.ruoyi.web.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.ProjectCategory;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2024-07-26
 */
public interface IProjectCategoryService extends IService<ProjectCategory>
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public ProjectCategory selectProjectCategoryById(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param projectCategory 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<ProjectCategory> selectProjectCategoryList(ProjectCategory projectCategory);

    /**
     * 新增【请填写功能名称】
     * 
     * @param projectCategory 【请填写功能名称】
     * @return 结果
     */
    public int insertProjectCategory(ProjectCategory projectCategory);

    /**
     * 修改【请填写功能名称】
     * 
     * @param projectCategory 【请填写功能名称】
     * @return 结果
     */
    public int updateProjectCategory(ProjectCategory projectCategory);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteProjectCategoryByIds(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteProjectCategoryById(String id);
}
