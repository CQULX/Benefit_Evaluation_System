package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.web.domain.UnitPersonnelInfo;
import com.ruoyi.web.service.IUnitPersonnelInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2024-07-22
 */
@RestController
@RequestMapping("/system/userInfo")
public class UnitPersonnelInfoController extends BaseController
{
    @Autowired
    private IUnitPersonnelInfoService unitPersonnelInfoService;

    /**
     * 查询【请填写功能名称】列表
     */
    @PreAuthorize("@ss.hasPermi('system:userInfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(UnitPersonnelInfo unitPersonnelInfo)
    {
        startPage();
        List<UnitPersonnelInfo> list = unitPersonnelInfoService.selectUnitPersonnelInfoList(unitPersonnelInfo);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @PreAuthorize("@ss.hasPermi('system:userInfo:export')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, UnitPersonnelInfo unitPersonnelInfo)
    {
        List<UnitPersonnelInfo> list = unitPersonnelInfoService.selectUnitPersonnelInfoList(unitPersonnelInfo);
        ExcelUtil<UnitPersonnelInfo> util = new ExcelUtil<UnitPersonnelInfo>(UnitPersonnelInfo.class);
        util.exportExcel(response, list, "【请填写功能名称】数据");
    }

    /**
     * 获取【请填写功能名称】详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:userInfo:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(unitPersonnelInfoService.selectUnitPersonnelInfoById(id));
    }

    /**
     * 新增【请填写功能名称】
     */
    @PreAuthorize("@ss.hasPermi('system:userInfo:add')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody UnitPersonnelInfo unitPersonnelInfo)
    {
        return toAjax(unitPersonnelInfoService.insertUnitPersonnelInfo(unitPersonnelInfo));
    }

    /**
     * 修改【请填写功能名称】
     */
    @PreAuthorize("@ss.hasPermi('system:userInfo:edit')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody UnitPersonnelInfo unitPersonnelInfo)
    {
        return toAjax(unitPersonnelInfoService.updateUnitPersonnelInfo(unitPersonnelInfo));
    }

    /**
     * 删除【请填写功能名称】
     */
    @PreAuthorize("@ss.hasPermi('system:userInfo:remove')")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(unitPersonnelInfoService.deleteUnitPersonnelInfoByIds(ids));
    }
}
