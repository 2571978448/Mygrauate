package org.lianxi.service.impl;

import org.lianxi.entity.User_role;
import org.lianxi.mapper.User_roleMapper;
import org.lianxi.service.User_roleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class User_roleServiceImpl implements User_roleService{

	@Autowired
	private User_roleMapper user_roleMapper;

	public void setUser_roleMapper(User_roleMapper user_roleMapper) {
		this.user_roleMapper = user_roleMapper;
	}

	@Override
	public boolean addUser_role(User_role user_role) {
		int count=user_roleMapper.queryUser_role(user_role);
		if(count==0) {
			user_roleMapper.addUser_role(user_role);
			return true;
		}else {
			return false;
		}
	}

	@Override
	public int queryRidByUid(String userid) {
		// TODO Auto-generated method stub
		return user_roleMapper.queryRidByUid(userid);
	}

	@Override
	public void updateUser_role(User_role user_role) {
		user_roleMapper.updateUser_role(user_role);
	}	
	
}
