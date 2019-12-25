package com.dong.web.controller.roleManagement;

import com.dong.common.ReturnResult;
import com.dong.web.model.RoleInfoBean;
import com.dong.web.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "roleManagementController")
public class roleManagementController {

    @Autowired
    private RoleService roleService;

    /**
     * 新增角色
     * @param param
     * @return
     */
    @RequestMapping(value = "addRoleInfo",method= RequestMethod.GET, produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public ReturnResult<RoleInfoBean> addRoleInfo(RoleInfoBean param){
        ReturnResult<RoleInfoBean> result = new ReturnResult<RoleInfoBean>();
        result = roleService.addRoleInfo(param);
        return result;
    }


}
