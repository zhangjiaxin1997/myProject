package com.dong.web.dao;

import com.dong.common.ReturnResult;
import com.dong.web.domain.Role;

import com.dong.web.model.RoleInfoBean;
import java.util.List;

public interface RoleMapper {
    int deleteByPrimaryKey(String id);

    ReturnResult<RoleInfoBean> insertRoleInfo(RoleInfoBean param);

    Role selectByPrimaryKey(String id);

    int updateByPrimaryKey(Role record);

    List<Role> findRoleList(String username);

    RoleInfoBean findByRoleName(String roleName);
}