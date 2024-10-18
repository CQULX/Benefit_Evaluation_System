package com.ruoyi.web.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.TableAttribute;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2024-08-25
 */
public interface ITableAttributeService extends IService<TableAttribute>
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public TableAttribute selectTableAttributeById(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param tableAttribute 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<TableAttribute> selectTableAttributeList(TableAttribute tableAttribute);

    /**
     * 新增【请填写功能名称】
     * 
     * @param tableAttribute 【请填写功能名称】
     * @return 结果
     */
    public int insertTableAttribute(TableAttribute tableAttribute);

    /**
     * 修改【请填写功能名称】
     * 
     * @param tableAttribute 【请填写功能名称】
     * @return 结果
     */
    public int updateTableAttribute(TableAttribute tableAttribute);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteTableAttributeByIds(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteTableAttributeById(String id);

    List<TableAttribute> selectTableAttributebyTableId(List<Long> tableIdArray);

    TableAttribute selectTableAttributeByIds(Long tableId, Long attrId);
}
