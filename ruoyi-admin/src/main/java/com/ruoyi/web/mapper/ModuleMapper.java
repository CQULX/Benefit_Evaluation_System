package com.ruoyi.web.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.web.domain.Module;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ModuleMapper extends BaseMapper<Module> {

    public Module selectModuleByTemplateId(@Param("templateId") Long templateId, @Param("pageIndex") Integer pageIndex);

}
