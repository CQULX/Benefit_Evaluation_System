package com.ruoyi.web.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.web.domain.Equation;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2024-08-25
 */
public interface EquationMapper extends BaseMapper<Equation>
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public Equation selectEquationById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param equation 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<Equation> selectEquationList(Equation equation);

    /**
     * 新增【请填写功能名称】
     * 
     * @param equation 【请填写功能名称】
     * @return 结果
     */
    public int insertEquation(Equation equation);

    /**
     * 修改【请填写功能名称】
     * 
     * @param equation 【请填写功能名称】
     * @return 结果
     */
    public int updateEquation(Equation equation);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteEquationById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteEquationByIds(Long[] ids);
}
