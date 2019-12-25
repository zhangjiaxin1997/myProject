package com.dong.web.service;

import com.dong.common.ReturnResult;
import com.dong.web.model.RoleInfoBean;
import java.util.Set;

public interface RoleService {

    public Set<String> findRoleList(String username);

    public ReturnResult<RoleInfoBean> addRoleInfo(RoleInfoBean param);

}
