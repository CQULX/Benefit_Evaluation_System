package com.ruoyi.web.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.AttributeMapper;
import com.ruoyi.web.domain.Attribute;
import com.ruoyi.web.service.IAttributeService;
import java.util.List;
/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-08-18
 */
@Service
public class AttributeServiceImpl extends ServiceImpl<AttributeMapper,Attribute> implements IAttributeService
{
    @Autowired
    private AttributeMapper attributeMapper;

    /**
<<<<<<< HEAD
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public Attribute selectAttributeByid(String id)
    {
        return attributeMapper.selectAttributeByid(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param attribute 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<Attribute> selectAttributeList(Attribute attribute)
    {
        return attributeMapper.selectAttributeList(attribute);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param attribute 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertAttribute(Attribute attribute)
    {
        attribute.setCreateTime(DateUtils.getNowDate());
        return attributeMapper.insertAttribute(attribute);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param attribute 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateAttribute(Attribute attribute)
    {
        attribute.setUpdateTime(DateUtils.getNowDate());
        return attributeMapper.updateAttribute(attribute);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteAttributeByids(String[] ids)
    {
        return attributeMapper.deleteAttributeByids(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteAttributeByid(String id)
    {
        return attributeMapper.deleteAttributeByid(id);
    }

    @Override
    public Long selectAttributeIdByAttributeName(String key) {
        QueryWrapper<Attribute> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("name",key);
        Attribute attribute = this.baseMapper.selectOne(queryWrapper);
        return attribute.getId();
    }

    /**
     * 根据子表ID批量查询属性ID
     *
     * @param tableIds
     * @return 属性ID列表
     */
    @Override
    public List<Long> selectAttributeIdsByTableIds(List<Long> tableIds) {
        return attributeMapper.selectAttributeIdsByTableIds(tableIds);
    }

    /**
     * 根据属性ID集合查询属性信息列表
     *
     * @param attributeIdUnion
     * @return 属性列表
     */
    @Override
    public List<Attribute> selectAttributeByIds(List<Long> attributeIdUnion) {
        return attributeMapper.selectAttributeByIds(attributeIdUnion);
    }

    /**
     * 根据表ID和属性ID查询属性是否与实体关联
     *
     * @param tableId
     * @param attributeId
     * @return 实体ID
     */
    @Override
    public Integer selectEntityRelatedByTableIdAndAttributeId(Long tableId, Long attributeId) {
        return attributeMapper.selectEntityRelatedByTableIdAndAttributeId(tableId,attributeId);
    }

    @Override
    public List<Long> findAllByTableId(Long tableId) {
        return attributeMapper.findAllByTableId(tableId);
    }

    @Override
    public Attribute findByName(String name) {
        return attributeMapper.selectAttributeByName(name);
    }
}
