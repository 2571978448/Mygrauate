package org.lianxi.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.lianxi.entity.Data;
import org.lianxi.entity.Role;
import org.lianxi.entity.User;
import org.lianxi.service.DataService;
import org.lianxi.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("role")
public class RoleController {
     
	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	@Autowired
	private RoleService roleService;
	@Autowired
	private DataService dataService;
	
	public void setDataService(DataService dataService) {
		this.dataService = dataService;
	}

	@RequestMapping(value = "allroles")
	public String queryAllRoles(Map<String,Object> map) {
		List<Role> roles = roleService.queryAllRoles();
		map.put("roles", roles);
		return "roles";
	}
	
	@RequestMapping(value = "addRole")
	public String addRole(Role role,HttpServletRequest request) {
		String work="增加了一个角色";
		User user = (User) request.getSession().getAttribute("userFors");
		String name=user.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
	    
		Role role1=roleService.queryRoleById(role.getId());
		if(role1==null) {
		roleService.addRole(role);
		return "addrolesuccess";
	}
		else {
			return "addrolesuccess1";
		}
	}
	
	@RequestMapping(value = "deleteRoleById")
	public String deleteRoleById(@RequestParam("rid") int rid,HttpServletRequest request) {
		String work="删除了一个角色";
		User user = (User) request.getSession().getAttribute("userFors");
		String name=user.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
	    
		boolean result=roleService.deleteDoleById(rid);
		if(result) {
			return "deleterolesuccess";
		}else {
			return "deleterolesuccess1";
		}
		
	}
}
