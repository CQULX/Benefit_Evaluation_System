package com.ruoyi.web.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.Equation;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2024-08-25
 */
public interface IEquationService extends IService<Equation>
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
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteEquationByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteEquationById(Long id);

    List<Equation> selectEquationByTableId(List<Long> tableIdArray);

    Long selectEquationByIds(Long tableId, Long attributeId, Long entityId);
}
