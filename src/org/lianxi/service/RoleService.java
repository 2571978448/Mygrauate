package org.lianxi.service;

import java.util.List;

import org.lianxi.entity.Role;

public interface RoleService {
      public List<Role> queryAllRoles();
      public void addRole(Role role);
      public Role queryRoleById(int id);
      public boolean deleteDoleById(int id);
}
