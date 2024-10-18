package com.ruoyi.web.controller.create;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.web.domain.ProjectInfo;
import com.ruoyi.web.domain.UnitPersonnelInfo;
import com.ruoyi.web.service.IEntityService;
import com.ruoyi.web.service.IProjectInfoService;
import com.ruoyi.web.service.IUnitPersonnelInfoService;
import com.ruoyi.web.vo.PersonnelInfoVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.core.controller.BaseController;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/newproject")
public class createProjectController extends BaseController{

    @Autowired
    IUnitPersonnelInfoService personnelInfoService;

    @Autowired
    IProjectInfoService projectInfoService;

    @Autowired
    IEntityService entityService;



    @PostMapping("/savePersonInfo")
    public AjaxResult saveInfo(@RequestBody ProjectInfo projectInfo){
        AjaxResult ajax = AjaxResult.success();
        System.out.println(projectInfo);
        Long userId = SecurityUtils.getUserId();
        projectInfo.setUnitPersonId(userId);
        projectInfo.setProjectType("AI产品类");
        int count = projectInfoService.insertProjectInfo(projectInfo);
        ProjectInfo lastProjectInfo=null;
        if(count==1){
            lastProjectInfo=projectInfoService.selectTheLastProjectInfo();
        }
        if(lastProjectInfo!=null){
            ajax.put("data",lastProjectInfo);
        }
        return ajax;
    }

    @GetMapping("/product/getSpecification")
    public AjaxResult getSpecification(String productName){

        AjaxResult ajax = AjaxResult.success();
        List<String> specifications= entityService.selectSpecificationByName(productName);
        HashMap<String,Object> data=new HashMap<>();
        System.out.println(specifications.size());
        System.out.println(specifications.get(0));
        if(specifications.size()==1 && specifications.get(0).equals("")){
            String productCode=entityService.selectProductCodeByName(productName);
            data.put("hasSpecification",false);
            data.put("productCode",productCode);
        }else{
            data.put("hasSpecification",true);
            data.put("specificationList",specifications);
        }
        ajax.put("data",data);
        return ajax;
    }

    @GetMapping("/product/getProductCode")
    public AjaxResult getProductCode(String productName,String specification){
        AjaxResult ajax = AjaxResult.success();
        String productCode=entityService.selectProductCodeByNameAndSpecification(productName,specification);
        HashMap<String,Object> data=new HashMap<>();
        data.put("productCode",productCode);
        ajax.put("data",data);
        return ajax;
    }


    @GetMapping("/investdevelop")
    public AjaxResult list(Integer projectId) throws IllegalAccessException {
        AjaxResult ajax = AjaxResult.success();
        ProjectInfo projectInfo=null;
        if(projectId!=null){
            projectInfo = projectInfoService.selectProjectInfoById(Long.valueOf(projectId));
        }
        System.out.println("projectId:"+projectId);
        HashMap<String, Object> data1 = getStringObjectHashMap();
        HashMap<String,Object> schema=new HashMap<>();
        HashMap<String,HashMap<String,Object>> properites=new HashMap<>();
        schema.put("type","object");
        schema.put("required",null);
        properites.put("username",new HashMap<String,Object>(){{put("type","string");put("title","填报人");}});
//        ajax.put("projectData",data2);
        ajax.put("data",data1);
        if(projectInfo!=null){
            ajax.put("projectInfo",projectInfo);
        }
        return ajax;
    }

    private HashMap<String, Object> getStringObjectHashMap() throws IllegalAccessException {
        Long userId = SecurityUtils.getUserId();
        UnitPersonnelInfo personnelInfo=personnelInfoService.getInfoByLoginId(userId);
        HashMap<String,Object> data=new HashMap<>();
        HashMap<String,Object> formData=new HashMap<>();
        HashMap<String,Object> schema=new HashMap<>();
        HashMap<String,Object> uichema=new HashMap<>();
        HashMap<String,HashMap<String,Object>> properites=new HashMap<>();
        List<String> order=new ArrayList<>();
        schema.put("type","object");
        schema.put("required",null);
        PersonnelInfoVo personnelInfoVo = new PersonnelInfoVo();

        BeanUtils.copyProperties(personnelInfo,personnelInfoVo);
        Field[] fields = personnelInfoVo.getClass().getDeclaredFields();
        String[] propertiesName={"公司名称","下属单位名称","填报人","填报人联系方式","项目责任单位","项目责任人","项目责任人联系方式"};
        int index=0;
        for (Field field : fields) {
            field.setAccessible(true);
            Object value=field.get(personnelInfoVo);
            String name=field.getName();
            int finalIndex = index;
            if(name.equals("projectResponsiblePerson")){
                properites.put(name,new HashMap<String,Object>(){{put("type","string");put("title",propertiesName[finalIndex]);}});
            }else{
                properites.put(name,new HashMap<String,Object>()
                {{put("type","string");
                    put("title",propertiesName[finalIndex]);
                    put("ui:options",new HashMap<String,String>()
                    {{put("disabled","true");}});
                }}
                );
            }

            formData.put(name,value);
            index=index+1;
        }

//        properites.put("username",new HashMap<String,String>(){{put("type","string");put("title","填报人");}});
//        properites.put("telephone",new HashMap<String,String>(){{put("type","string");put("title","填报人联系方式");}});
//        properites.put("company",new HashMap<String,String>(){{put("type","string");put("title","公司名称");}});
//        properites.put("subcompany",new HashMap<String,String>(){{put("type","string");put("title","下属单位名称");}});
//        properites.put("resPerson",new HashMap<String,String>(){{put("type","string");put("title","项目责任人");}});
//        properites.put("resTelephone",new HashMap<String,String>(){{put("type","string");put("title","项目责任人联系方式");}});
//        properites.put("resCompany",new HashMap<String,String>(){{put("type","string");put("title","项目责任单位");}});
        order.add("filler");
        order.add("fillerContact");
        order.add("companyName");
        order.add("subordinateUnitName");
        order.add("projectResponsiblePerson");
        order.add("projectResponsibleContact");
        order.add("projectResponsibleUnit");
        schema.put("ui:order",order);
        schema.put("properties",properites);
        data.put("formData",formData);
        data.put("schema",schema);
        data.put("uichema",uichema);
        return data;
    }


}
