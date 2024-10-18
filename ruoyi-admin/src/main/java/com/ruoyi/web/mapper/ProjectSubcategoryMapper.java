package com.ruoyi.web.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.web.domain.ProjectSubcategory;
import org.apache.ibatis.annotations.Mapper;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2024-07-26
 */
@Mapper
public interface ProjectSubcategoryMapper extends BaseMapper<ProjectSubcategory>
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public ProjectSubcategory selectProjectSubcategoryById(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param projectSubcategory 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<ProjectSubcategory> selectProjectSubcategoryList(ProjectSubcategory projectSubcategory);

    /**
     * 新增【请填写功能名称】
     * 
     * @param projectSubcategory 【请填写功能名称】
     * @return 结果
     */
    public int insertProjectSubcategory(ProjectSubcategory projectSubcategory);

    /**
     * 修改【请填写功能名称】
     * 
     * @param projectSubcategory 【请填写功能名称】
     * @return 结果
     */
    public int updateProjectSubcategory(ProjectSubcategory projectSubcategory);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteProjectSubcategoryById(String id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteProjectSubcategoryByIds(String[] ids);
}
