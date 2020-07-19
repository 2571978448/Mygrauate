package org.lianxi.mapper;

import org.lianxi.entity.User_role;

public interface User_roleMapper {
     public void addUser_role(User_role user_role);
     public int queryUser_role(User_role user_role);
     public int queryRidByUid(String userid);
     public void updateUser_role(User_role user_role);
}
