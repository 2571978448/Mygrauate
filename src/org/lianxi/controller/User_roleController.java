package org.lianxi.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.lianxi.entity.Data;
import org.lianxi.entity.Role;
import org.lianxi.entity.User;
import org.lianxi.entity.User_role;
import org.lianxi.service.DataService;
import org.lianxi.service.RoleService;
import org.lianxi.service.User_roleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("user_role")
public class User_roleController {

	@Autowired
	private User_roleService user_roleService;
	
	@Autowired
	private RoleService roleService;
	@Autowired
	private DataService dataService;
	
	@RequestMapping("addUser_role")
	public String addUser_role(User_role user_role,HttpServletRequest request) {
		String work="增加了一个用户角色对应关系";
		User user = (User) request.getSession().getAttribute("userFors");
		String name=user.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
	    
		boolean result=user_roleService.addUser_role(user_role);
		if(result) {
			return "addUser_roleSuccess";
		}else {
			return "addUser_roleSuccess1";
		}
	}
	
	@RequestMapping("queryRoleByUserid")
	public String queryRoleByUserid(@RequestParam("userid") String userid,Map<String,Object> map) {
		int roleid=user_roleService.queryRidByUid(userid);
		System.out.println(roleid);
		Role role = roleService.queryRoleById(roleid);
		System.out.println(role);
		map.put("role", role);
		return "roleOfuser";
	}
	
	@RequestMapping("updateUser_role")
	public String updateUser_role(User_role user_role,HttpServletRequest request) {
		String work="更新了一个用户角色对应关系";
		User user = (User) request.getSession().getAttribute("userFors");
		String name=user.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
		user_roleService.updateUser_role(user_role);
		return "updateUser_roleSuccess";
	}
}
