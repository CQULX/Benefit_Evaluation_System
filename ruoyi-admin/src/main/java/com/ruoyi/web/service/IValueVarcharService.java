package com.ruoyi.web.service;

import java.util.List;
import java.util.Set;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.ValueVarchar;

import javax.script.ScriptException;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2024-08-18
 */
public interface IValueVarcharService extends IService<ValueVarchar>
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public ValueVarchar selectValueVarcharById(String id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param valueVarchar 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<ValueVarchar> selectValueVarcharList(ValueVarchar valueVarchar);

    /**
     * 新增【请填写功能名称】
     * 
     * @param valueVarchar 【请填写功能名称】
     * @return 结果
     */
    public int insertValueVarchar(ValueVarchar valueVarchar);

    /**
     * 修改【请填写功能名称】
     * 
     * @param valueVarchar 【请填写功能名称】
     * @return 结果
     */
    public int updateValueVarchar(ValueVarchar valueVarchar);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteValueVarcharByIds(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteValueVarcharById(String id);

    Long selectValueIdByIds(Long projectId, Long entityId, Long tableId, Long attrId);

    Object selectValueByIds(Long projectInfoId, Long attrbuteId, Long tableId, Long entitesId);

    void deleteValueVarcharByEntityAndProject(Long entityId, Long projectId);

    Long validHasValueByIds(Long projectInfoId, Long tableId, Long entityId);

    void calculate(Set<Long> tableIds, Long projectId) throws ScriptException;

    List<Long> selectEntityIdsByIds(Long projectId, Long tableId);

    List<String> findValueByProjectInfoIdAndTableIdAndAttributeId(Long projectInfoId, Long tableId, Long attributeId);

    ValueVarchar findByTableIdAndAttrValue(Long tableId, String attrValue);

    String selectValueByTableIdAndAttributeId(Long tableId, Long id);
}
