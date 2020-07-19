package org.lianxi.service.impl;

import java.util.List;

import org.lianxi.entity.User;
import org.lianxi.mapper.UserMapper;
import org.lianxi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{
    
	@Autowired
	private UserMapper userMapper;

	public void setUserMapper(UserMapper userMapper) {
		this.userMapper = userMapper;
	}

	@Override
	public void addUser(User user) {
		 userMapper.addUser(user);
	}

	@Override
	public List<User> queryAllUsers() {
		return userMapper.queryAllUsers();
	}

	@Override
	public List<User> queryUserByName(String name) {
		return userMapper.queryUserByName(name);
	}

	@Override
	public List<User> queryUserById(String id) {
		return userMapper.queryUserById(id);
	}

	@Override
	public void deleteUser(String id) {
        userMapper.deleteUser(id);		
	}

	@Override
	public User queryUserById1(String id) {
		// TODO Auto-generated method stub
		return userMapper.queryUserById1(id);
	}

	@Override
	public int queryUser(User user) {
		return userMapper.queryUser(user);
	}
}
