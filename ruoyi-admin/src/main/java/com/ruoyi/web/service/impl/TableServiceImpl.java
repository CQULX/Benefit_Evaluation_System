package com.ruoyi.web.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ruoyi.web.domain.Table;
import com.ruoyi.web.mapper.TableMapper;
import com.ruoyi.web.service.ITableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TableServiceImpl extends ServiceImpl<TableMapper,Table> implements ITableService {

    @Autowired
    private TableMapper tableMapper;

    @Override
    public List<Table> selectTableByModuleId(Long moduleId) {
        return tableMapper.selectTableByModuleId(moduleId);
    }

    @Override
    public Long selectTableIdByTableName(String tableName) {
        QueryWrapper<Table> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("name",tableName);
        Table table = this.baseMapper.selectOne(queryWrapper);
        return table.getId();
    }

    @Override
    public List<String> selectAttributeNameByTableId(Long tableId) {

        return tableMapper.selectAttributeNamesByTableId(tableId);
    }

    @Override
    public Table findByModuleId(Long moduleId) {
        return tableMapper.findByModuleId(moduleId);
    }

    @Override
    public Table selectTableById(Long tableId) {
        QueryWrapper<Table> queryWrapper=new QueryWrapper<>();
        queryWrapper.eq("id",tableId);
        Table table = this.baseMapper.selectOne(queryWrapper);
        return table;
    }


}
