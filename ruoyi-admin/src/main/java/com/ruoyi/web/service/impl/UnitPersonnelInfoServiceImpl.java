package com.ruoyi.web.service.impl;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.web.mapper.UnitPersonnelInfoMapper;
import com.ruoyi.web.domain.UnitPersonnelInfo;
import com.ruoyi.web.service.IUnitPersonnelInfoService;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-07-22
 */
@Service
public class UnitPersonnelInfoServiceImpl extends ServiceImpl<UnitPersonnelInfoMapper,UnitPersonnelInfo> implements IUnitPersonnelInfoService
{
    @Autowired
    private UnitPersonnelInfoMapper unitPersonnelInfoMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    @Override
    public UnitPersonnelInfo selectUnitPersonnelInfoById(Long id)
    {
        return unitPersonnelInfoMapper.selectUnitPersonnelInfoById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param unitPersonnelInfo 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<UnitPersonnelInfo> selectUnitPersonnelInfoList(UnitPersonnelInfo unitPersonnelInfo)
    {
        return unitPersonnelInfoMapper.selectUnitPersonnelInfoList(unitPersonnelInfo);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param unitPersonnelInfo 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertUnitPersonnelInfo(UnitPersonnelInfo unitPersonnelInfo)
    {
        unitPersonnelInfo.setCreateTime(DateUtils.getNowDate());
        return unitPersonnelInfoMapper.insertUnitPersonnelInfo(unitPersonnelInfo);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param unitPersonnelInfo 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateUnitPersonnelInfo(UnitPersonnelInfo unitPersonnelInfo)
    {
        unitPersonnelInfo.setUpdateTime(DateUtils.getNowDate());
        return unitPersonnelInfoMapper.updateUnitPersonnelInfo(unitPersonnelInfo);
    }

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUnitPersonnelInfoByIds(Long[] ids)
    {
        return unitPersonnelInfoMapper.deleteUnitPersonnelInfoByIds(ids);
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    @Override
    public int deleteUnitPersonnelInfoById(Long id)
    {
        return unitPersonnelInfoMapper.deleteUnitPersonnelInfoById(id);
    }

    @Override
    public UnitPersonnelInfo getInfoByLoginId(Long userId) {
        UnitPersonnelInfo personnelInfo = unitPersonnelInfoMapper.selectUnitPersonnelInfoByLoginId(userId);
        System.out.println(personnelInfo);
        return personnelInfo;
    }
}
