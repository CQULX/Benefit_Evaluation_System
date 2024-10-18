package com.ruoyi.web.mapper;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.web.domain.Entity;
import org.apache.commons.lang3.tuple.Pair;
import org.apache.ibatis.annotations.MapKey;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.xmlbeans.impl.xb.xsdschema.Public;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2024-08-06
 */
@Mapper
public interface EntityMapper extends BaseMapper<Entity> {
    /**
     * 根据项目子类查询列表
     *
     * @param subcategoryId
     * @return 实体列表
     */
    public List<Entity> selectEntityBySubcategory(Long subcategoryId);

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public Entity selectEntityById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param entity 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<Entity> selectEntityList(Entity entity);

    /**
     * 新增【请填写功能名称】
     * 
     * @param entity 【请填写功能名称】
     * @return 结果
     */
    public int insertEntity(Entity entity);

    /**
     * 修改【请填写功能名称】
     * 
     * @param entity 【请填写功能名称】
     * @return 结果
     */
    public int updateEntity(Entity entity);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteEntityById(String id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteEntityByIds(String[] ids);

    /**
     * 根据表id查询实体ID
     * 
     * @param tableId
     * @return
     */
    List<Long> selectNonProductEntityIdsByTableId(@Param("tableId") Long tableId);

    /**
     * 根据表id查询实体ID和是否可编辑
     * 
     * @param tableId
     * @return
     */
    @MapKey("entityId")
    public List<Pair<Long, Integer>> selectEntityIdAndIsEditMapByTableId(@Param("tableId") Long tableId);

    /**
     * 根据表id查询是否可编辑
     * 
     * @param tableId
     * @return
     */
    List<Integer> selectNonProductIsEditsByTableId(@Param("tableId") Long tableId);

    /**
     * 根据表id查询实体ID
     * 表table_entity_edit
     * 
     * @param tableId
     * @param entityId
     * @return
     */
    Integer selectIsEditsByTableIdAndEntityId(@Param("tableId") Long tableId, @Param("entityId") Long entityId);
}
