package org.lianxi.mapper;

import java.util.List;

import org.lianxi.entity.User;

public interface UserMapper {
      public void addUser(User user);
      public List<User> queryAllUsers();
      public List<User> queryUserByName(String name);
      public List<User> queryUserById(String id);
      public User queryUserById1(String id);
      public void deleteUser(String id);
      public int queryUser(User user);
}
