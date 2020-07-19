package org.lianxi.service;

import java.util.List;

import org.lianxi.entity.Access;

public interface AccessService {
     
	public List<Access> allAccesss();
	public void addAccess(Access access);
	public void deleteAccess(int id);
	public Access queryaccess(int id);
	public int qureyIdByname(String name);
}
