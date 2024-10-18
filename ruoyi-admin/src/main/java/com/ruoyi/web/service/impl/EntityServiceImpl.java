package com.ruoyi.web.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.common.utils.DateUtils;
import org.apache.commons.lang3.tuple.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.EntityMapper;
import com.ruoyi.web.domain.Entity;
import com.ruoyi.web.service.IEntityService;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-08-06
 */
@Service
public class EntityServiceImpl extends ServiceImpl<EntityMapper, Entity> implements IEntityService {
    @Autowired
    private EntityMapper entityMapper;

    /**
     * 根据项目子类查询列表
     *
     * @param subcategoryId
     * @return list
     */
    @Override
    public List<Entity> selectEntityBySubcategory(Long subcategoryId) {
        return entityMapper.selectEntityBySubcategory(subcategoryId);
    }

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public Entity selectEntityById(Long id) {
        return entityMapper.selectEntityById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param entity 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<Entity> selectEntityList(Entity entity) {
        return entityMapper.selectEntityList(entity);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param entity 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertEntity(Entity entity) {
        entity.setCreateTime(DateUtils.getNowDate());
        return entityMapper.insertEntity(entity);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param entity 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateEntity(Entity entity) {
        entity.setUpdateTime(DateUtils.getNowDate());
        return entityMapper.updateEntity(entity);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteEntityByIds(String[] ids) {
        return entityMapper.deleteEntityByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteEntityById(String id) {
        return entityMapper.deleteEntityById(id);
    }

    @Override
    public List<String> selectSpecificationByName(String productName) {
        QueryWrapper<Entity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("name", productName);
        List<Entity> entities = this.baseMapper.selectList(queryWrapper);
        List<String> specificationList = new ArrayList<>();
        for (Entity entity : entities) {
            specificationList.add(entity.getSpecification());
        }
        System.out.println(specificationList);
        return specificationList;
    }

    @Override
    public String selectProductCodeByName(String productName) {
        QueryWrapper<Entity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("name", productName);
        Entity entity = this.baseMapper.selectOne(queryWrapper);
        return entity.getEntityCode();
    }

    @Override
    public String selectProductCodeByNameAndSpecification(String productName, String specification) {
        QueryWrapper<Entity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("name", productName).eq("specification", specification);
        Entity entity = this.baseMapper.selectOne(queryWrapper);
        return entity.getEntityCode();
    }

    @Override
    public Long selectEntityIdByProductCode(String productCode) {
        QueryWrapper<Entity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("entity_code", productCode);
        Entity entity = this.baseMapper.selectOne(queryWrapper);
        return entity.getId();
    }

    @Override
    public Long selectEntityIdByEntityName(String entityName) {
        QueryWrapper<Entity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("name", entityName);
        Entity entity = this.baseMapper.selectOne(queryWrapper);
        return entity.getId();
    }

    /**
     * 根据表ID查询实体ID列表
     * 
     * @param tableId
     * @return
     */
    @Override
    public List<Long> selectNonProductEntityIdsByTableId(Long tableId) {
        return entityMapper.selectNonProductEntityIdsByTableId(tableId);
    }

    /**
     * 根据表格id查询相关实体id和是否可编辑
     * 
     * @param tableId
     * @return
     */
    @Override
    public List<Pair<Long, Integer>> selectEntityIdAndIsEditMapByTableId(Long tableId) {
        return entityMapper.selectEntityIdAndIsEditMapByTableId(tableId);
    }

    @Override
    public List<Integer> selectNonProductIsEditsByTableId(Long tableId) {
        return entityMapper.selectNonProductIsEditsByTableId(tableId);
    }

    @Override
    public String selectProductCodeByEntityId(Long entityId) {
        QueryWrapper<Entity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", entityId);
        Entity entity = this.baseMapper.selectOne(queryWrapper);
        return entity.getEntityCode();
    }

    /**
     * 根据表id查询实体ID
     * 表table_entity_edit
     * 
     * @param tableId
     * @param entityId
     * @return
     */
    @Override
    public Integer selectIsEditsByTableIdAndEntityId(Long tableId, Long entityId) {
        return entityMapper.selectIsEditsByTableIdAndEntityId(tableId, entityId);
    }
}
