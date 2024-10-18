package com.ruoyi.web.service;

import java.util.List;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.UnitPersonnelInfo;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2024-07-22
 */
public interface IUnitPersonnelInfoService extends IService<UnitPersonnelInfo>
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】主键
     * @return 【请填写功能名称】
     */
    public UnitPersonnelInfo selectUnitPersonnelInfoById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param unitPersonnelInfo 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<UnitPersonnelInfo> selectUnitPersonnelInfoList(UnitPersonnelInfo unitPersonnelInfo);

    /**
     * 新增【请填写功能名称】
     * 
     * @param unitPersonnelInfo 【请填写功能名称】
     * @return 结果
     */
    public int insertUnitPersonnelInfo(UnitPersonnelInfo unitPersonnelInfo);

    /**
     * 修改【请填写功能名称】
     * 
     * @param unitPersonnelInfo 【请填写功能名称】
     * @return 结果
     */
    public int updateUnitPersonnelInfo(UnitPersonnelInfo unitPersonnelInfo);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的【请填写功能名称】主键集合
     * @return 结果
     */
    public int deleteUnitPersonnelInfoByIds(Long[] ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】主键
     * @return 结果
     */
    public int deleteUnitPersonnelInfoById(Long id);

    //根据登录账号的id获取用户id信息
    UnitPersonnelInfo getInfoByLoginId(Long userId);
}
