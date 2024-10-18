package com.ruoyi.web.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ruoyi.web.domain.Table;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface TableMapper extends BaseMapper<Table> {

    List<Table> selectTableByModuleId(Long moduleId);

    List<String> selectAttributeNamesByTableId(@Param("tableId") Long tableId);

    Table findByModuleId(Long moduleId);
}
