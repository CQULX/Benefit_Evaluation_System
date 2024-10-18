package com.ruoyi.web.mapper;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.web.domain.ValueVarchar;
import org.apache.ibatis.annotations.Param;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2024-08-18
 */
public interface ValueVarcharMapper extends BaseMapper<ValueVarchar>
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
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteValueVarcharById(String id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteValueVarcharByIds(String[] ids);

    List<Long> selectEntityIdsByIds(@Param("projectId") Long projectId, @Param("tableId") Long tableId);

    String selectValueByTableIdAndAttributeId(@Param("tableId") Long tableId, @Param("attributeId") Long attributeId);

    ValueVarchar findByTableIdAndAttrValue(@Param("tableId") Long tableId, @Param("attrValue") String attrValue);

    List<String> findValueByProjectInfoIdAndTableIdAndAttributeId(@Param("projectInfoId")Long projectInfoId, @Param("tableId") Long tableId, @Param("attributeId") Long attributeId);
}
