package org.lianxi.mapper;

import java.util.List;

import org.lianxi.entity.Role_access;

public interface Role_accessMapper {
	public List<Role_access> queryR_aByRoleid(int roleid);
	public void addRole_access(Role_access role_access);
	public int queryRole_access(Role_access role_access);
	public void deleteRole_aceess(Role_access role_access);
}
