package com.ruoyi.web.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.EquationMapper;
import com.ruoyi.web.domain.Equation;
import com.ruoyi.web.service.IEquationService;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-08-25
 */
@Service
public class EquationServiceImpl extends ServiceImpl<EquationMapper,Equation> implements IEquationService
{
    @Autowired
    private EquationMapper equationMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public Equation selectEquationById(Long id)
    {
        return equationMapper.selectEquationById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param equation 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<Equation> selectEquationList(Equation equation)
    {
        return equationMapper.selectEquationList(equation);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param equation 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertEquation(Equation equation)
    {
        return equationMapper.insertEquation(equation);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param equation 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateEquation(Equation equation)
    {
        return equationMapper.updateEquation(equation);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteEquationByIds(Long[] ids)
    {
        return equationMapper.deleteEquationByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteEquationById(Long id)
    {
        return equationMapper.deleteEquationById(id);
    }

    @Override
    public List<Equation> selectEquationByTableId(List<Long> tableIdArray) {
        QueryWrapper<Equation> queryWrapper=new QueryWrapper<>();
        queryWrapper.in("table_id",tableIdArray);
        List<Equation> equationList = this.baseMapper.selectList(queryWrapper);
        return equationList;
    }

    @Override
    public Long selectEquationByIds(Long tableId, Long attributeId, Long entityId) {
        QueryWrapper<Equation> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("table_id",tableId).eq("attribute_id",attributeId).eq("entity_id",entityId);
        Long count = this.baseMapper.selectCount(queryWrapper);
        return count;
    }
}
