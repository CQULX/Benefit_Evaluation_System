package com.ruoyi.web.vo;

import com.ruoyi.common.annotation.Excel;
import lombok.Data;

@Data
public class PersonnelInfoVo {
    @Excel(name = "市公司")
    private String companyName;

    /** 部门 */
    @Excel(name = "部门")
    private String subordinateUnitName;

    /** 登录人 */
    @Excel(name = "登录人")
    private String filler;

    /** 登录人手机号 */
    @Excel(name = "登录人手机号")
    private String fillerContact;

    /** 主责部门 */
    @Excel(name = "主责部门")
    private String projectResponsibleUnit;

    /** 主要责任人 */
    @Excel(name = "主要责任人")
    private String projectResponsiblePerson;

    /** 主要责任人手机号 */
    @Excel(name = "主要责任人手机号")
    private String projectResponsibleContact;
}
