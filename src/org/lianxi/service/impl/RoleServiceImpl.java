package org.lianxi.service.impl;

import java.util.List;

import org.lianxi.entity.Role;
import org.lianxi.mapper.RoleMapper;
import org.lianxi.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleMapper rolemapper;
	
	public void setRolemapper(RoleMapper rolemapper) {
		this.rolemapper = rolemapper;
	}

	@Override
	public List<Role> queryAllRoles() {
		return rolemapper.queryAllRoles();
	}

	@Override
	public void addRole(Role role) {
		rolemapper.addRole(role);
	}

	@Override
	public Role queryRoleById(int id) {
		// TODO Auto-generated method stub
		return rolemapper.queryRoleById(id);
	}

	@Override
	public boolean deleteDoleById(int id) {
		Role role = rolemapper.queryRoleById(id);
		if(role==null) {
			return false;
		}else {
			rolemapper.deleteDoleById(id);
			return true;
		}
	}

}
