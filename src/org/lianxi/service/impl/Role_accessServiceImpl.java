package org.lianxi.service.impl;

import java.util.List;

import org.lianxi.entity.Role_access;
import org.lianxi.mapper.Role_accessMapper;
import org.lianxi.service.Role_accessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Role_accessServiceImpl implements Role_accessService{

	@Autowired
	private Role_accessMapper role_accessMapper;

	public void setRole_accessMapper(Role_accessMapper role_accessMapper) {
		this.role_accessMapper = role_accessMapper;
	}

	@Override
	public List<Role_access> queryR_aByRoleid(int roleid) {
		return role_accessMapper.queryR_aByRoleid(roleid);
	}

	@Override
	public boolean addRole_access(Role_access role_access) {
		int count = role_accessMapper.queryRole_access(role_access);
		if(count==0) {
			role_accessMapper.addRole_access(role_access);
			return true;
		}else {
			return false;
		}
	
	}

	@Override
	public int queryRole_access(Role_access role_access) {
		return role_accessMapper.queryRole_access(role_access);
	}

	@Override
	public void deleteRole_aceess(Role_access role_access) {
		role_accessMapper.deleteRole_aceess(role_access);
	}
	
	
}
