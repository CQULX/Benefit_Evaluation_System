package com.ruoyi.web.service;


import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.Module;
import com.ruoyi.web.domain.ProjectCategory;

public interface IModuleService extends IService<Module>{

    // 根据模板ID和页码获取对应的模块
    public Module selectModuleByTemplateId(Long templateId, int pageIndex);

    Module selectModuleById(Integer moduleId);
}
