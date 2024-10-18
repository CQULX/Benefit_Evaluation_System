package com.ruoyi.web.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ruoyi.web.domain.Table;

import java.util.List;

public interface ITableService extends IService<Table> {

    /**
     * 根据模块ID查询子表列表
     *
     * @param moduleId
     * @return Table
     */
    public List<Table> selectTableByModuleId(Long moduleId);

    Long selectTableIdByTableName(String tableName);

    List<String> selectAttributeNameByTableId(Long tableId);

    Table findByModuleId(Long moduleId);

    Table selectTableById(Long tableId);
}
