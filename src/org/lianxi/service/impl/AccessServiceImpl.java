package org.lianxi.service.impl;

import java.util.List;

import org.lianxi.entity.Access;
import org.lianxi.mapper.AccessMapper;
import org.lianxi.service.AccessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccessServiceImpl implements AccessService{

	@Autowired
	private AccessMapper accessMapper;
	
	@Override
	public List<Access> allAccesss() {
	  return accessMapper.allAccesss();	 
	}

	@Override
	public void addAccess(Access access) {
	  accessMapper.addAccess(access);
	}

	@Override
	public void deleteAccess(int id) {
	  accessMapper.deleteAccess(id);
	}

	@Override
	public Access queryaccess(int id) {
		return accessMapper.queryaccess(id);
	}

	@Override
	public int qureyIdByname(String name) {
		return accessMapper.qureyIdByname(name);
	}

}
