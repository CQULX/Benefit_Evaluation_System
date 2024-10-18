package com.ruoyi.web.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.web.domain.Table;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.TableAttributeMapper;
import com.ruoyi.web.domain.TableAttribute;
import com.ruoyi.web.service.ITableAttributeService;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-08-25
 */
@Service
public class TableAttributeServiceImpl extends ServiceImpl<TableAttributeMapper,TableAttribute> implements ITableAttributeService
{
    @Autowired
    private TableAttributeMapper tableAttributeMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public TableAttribute selectTableAttributeById(String id)
    {
        return tableAttributeMapper.selectTableAttributeById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tableAttribute 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<TableAttribute> selectTableAttributeList(TableAttribute tableAttribute)
    {
        return tableAttributeMapper.selectTableAttributeList(tableAttribute);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param tableAttribute 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertTableAttribute(TableAttribute tableAttribute)
    {
        return tableAttributeMapper.insertTableAttribute(tableAttribute);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param tableAttribute 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateTableAttribute(TableAttribute tableAttribute)
    {
        return tableAttributeMapper.updateTableAttribute(tableAttribute);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTableAttributeByIds(String[] ids)
    {
        return tableAttributeMapper.deleteTableAttributeByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteTableAttributeById(String id)
    {
        return tableAttributeMapper.deleteTableAttributeById(id);
    }

    public List<TableAttribute> selectTableAttributebyTableId(List<Long> tableIdArray) {
        QueryWrapper<TableAttribute> queryWrapper=new QueryWrapper<>();
        queryWrapper.in("table_id",tableIdArray).isNotNull("equation");
        List<TableAttribute> tableAttributeList = this.baseMapper.selectList(queryWrapper);
        return tableAttributeList;
    }

    @Override
    public TableAttribute selectTableAttributeByIds(Long tableId, Long attrId) {
        QueryWrapper<TableAttribute> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("table_id",tableId).eq("attribute_id",attrId);
        TableAttribute tableAttribute = this.baseMapper.selectOne(queryWrapper);
        return tableAttribute;
    }
}
