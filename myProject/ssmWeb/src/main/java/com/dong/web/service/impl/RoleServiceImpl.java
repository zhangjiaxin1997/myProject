package com.dong.web.service.impl;

import com.dong.common.ReturnResult;
import com.dong.web.dao.RoleMapper;
import com.dong.web.domain.Role;
import com.dong.web.model.RoleInfoBean;
import com.dong.web.service.RoleService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public Set<String> findRoleList(String username) {
        Set<String> setResult = new HashSet<String>();
        List<Role> roleList = roleMapper.findRoleList(username);
        for (Role role: roleList) {
            setResult.add(role.getRoleName());
        }
        return setResult;
    }

    @Override
    public ReturnResult<RoleInfoBean> addRoleInfo(RoleInfoBean param){
        ReturnResult<RoleInfoBean> resultInfo = new ReturnResult<RoleInfoBean>();
        resultInfo = roleMapper.insertRoleInfo(param);
        return resultInfo;
    }







}
