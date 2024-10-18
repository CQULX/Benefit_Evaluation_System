package com.ruoyi.web.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.web.domain.Module;
import com.ruoyi.web.mapper.EntityMapper;
import com.ruoyi.web.mapper.ModuleMapper;
import com.ruoyi.web.service.IModuleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ModuleServiceImpl extends ServiceImpl<ModuleMapper,Module> implements IModuleService {

    @Autowired
    private ModuleMapper moduleMapper;

    /**
     * 根据模板ID、页码来筛选出对应的模块
     *
     * @param templateId
     * @param pageIndex
     * @return Module
     */
    @Override
    public Module selectModuleByTemplateId(Long templateId, int pageIndex) {
        return moduleMapper.selectModuleByTemplateId(templateId, pageIndex);
    }

    @Override
    public Module selectModuleById(Integer moduleId) {
        QueryWrapper<Module> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("id",moduleId);
        Module module = this.baseMapper.selectOne(queryWrapper);
        return module;
    }
}
