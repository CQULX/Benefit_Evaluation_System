package com.ruoyi.web.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.Entity;
import org.apache.commons.lang3.tuple.Pair;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2024-08-06
 */
public interface IEntityService extends IService<Entity> {
    /**
     * 根据项目子类查询列表
     *
     * @param subcategoryId
     * @return list
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
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteEntityByIds(String[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteEntityById(String id);

    List<String> selectSpecificationByName(String productName);

    String selectProductCodeByName(String productName);

    String selectProductCodeByNameAndSpecification(String productName, String specification);

    Long selectEntityIdByProductCode(String productCode);

    Long selectEntityIdByEntityName(String entityName);

    /**
     * 根据表格id查询非产品实体id
     * 表table_entity_edit
     * 
     * @param tableId
     * @return
     */
    List<Long> selectNonProductEntityIdsByTableId(Long tableId);

    /**
     * 根据表格id查询相关实体id和是否可编辑
     * 
     * @param tableId
     * @return
     */
    List<Pair<Long, Integer>> selectEntityIdAndIsEditMapByTableId(Long tableId);

    /**
     * 根据表格id查询非产品实体id是否可编辑
     * 
     * @param tableId
     * @return
     */
    List<Integer> selectNonProductIsEditsByTableId(Long tableId);

    /**
     * 根据实体ID查询产品编码
     * 
     * @param entityId
     * @return
     */
    String selectProductCodeByEntityId(Long entityId);

    /**
     * 根据表ID和实体id查询是否可编辑
     * 表table_entity_edit
     * 
     * @param tableId
     * @param entityId
     * @return
     */
    Integer selectIsEditsByTableIdAndEntityId(Long tableId, Long entityId);
}
