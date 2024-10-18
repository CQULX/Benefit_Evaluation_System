package com.ruoyi.web.service;


import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.Attribute;
import java.util.List;
/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2024-08-18
 */
public interface IAttributeService extends IService<Attribute>
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public Attribute selectAttributeByid(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param attribute 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<Attribute> selectAttributeList(Attribute attribute);

    /**
     * 新增【请填写功能名称】
     * 
     * @param attribute 【请填写功能名称】
     * @return 结果
     */
    public int insertAttribute(Attribute attribute);

    /**
     * 修改【请填写功能名称】
     * 
     * @param attribute 【请填写功能名称】
     * @return 结果
     */
    public int updateAttribute(Attribute attribute);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteAttributeByids(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteAttributeByid(String id);

    Long selectAttributeIdByAttributeName(String key);

    /**
     * 根据子表ID批量查询属性ID
     *
     * @param tableIds
     * @return 属性ID列表
     */
    public List<Long> selectAttributeIdsByTableIds(List<Long> tableIds);

    /**
     * 根据属性ID集合查询属性信息列表
     *
     * @param attributeIdUnion
     * @return 属性列表
     */
    List<Attribute> selectAttributeByIds(List<Long> attributeIdUnion);

    /**
     * 根据表ID和属性ID查询属性是否与实体关联
     *
     * @param tableId
     * @param attributeId
     * @return 实体ID
     */
    Integer selectEntityRelatedByTableIdAndAttributeId(Long tableId, Long attributeId);

    /**
     * @param tableId 表id
     * @return java.util.List<java.lang.Long>
     * @author lhf
     * @date 2024/8/25 21:04
     */
    List<Long> findAllByTableId(Long tableId);

    Attribute findByName(String name);
}
