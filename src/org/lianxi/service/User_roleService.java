package org.lianxi.service;

import org.lianxi.entity.User_role;

public interface User_roleService {
	public boolean addUser_role(User_role user_role);
	public int queryRidByUid(String userid);
	public void updateUser_role(User_role user_role);
}
