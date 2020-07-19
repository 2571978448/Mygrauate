package org.lianxi.mapper;

import java.util.List;

import org.lianxi.entity.Role;

public interface RoleMapper {
     public List<Role> queryAllRoles();
     public void addRole(Role role);
     public Role queryRoleById(int id);
     public void deleteDoleById(int id);
}
