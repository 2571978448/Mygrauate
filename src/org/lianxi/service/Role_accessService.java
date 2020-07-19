package org.lianxi.service;

import java.util.List;

import org.lianxi.entity.Role_access;

public interface Role_accessService {
	public List<Role_access> queryR_aByRoleid(int roleid);
	public boolean addRole_access(Role_access role_access);
	public int queryRole_access(Role_access role_access);
	public void deleteRole_aceess(Role_access role_access);
}
