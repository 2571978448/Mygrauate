package org.lianxi.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.lianxi.entity.Access;
import org.lianxi.entity.Data;
import org.lianxi.entity.Role_access;
import org.lianxi.entity.User;
import org.lianxi.service.AccessService;
import org.lianxi.service.DataService;
import org.lianxi.service.Role_accessService;
import org.lianxi.service.User_roleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("access")
public class AccessController {

	@Autowired
	private AccessService accessService;
	
	@Autowired
	private User_roleService user_roleService;
	
	@Autowired
	private Role_accessService Role_accessService;
    
	@Autowired
	private DataService dataService;

	public void setDataService(DataService dataService) {
		this.dataService = dataService;
	}

	public void setAccessService(AccessService accessService) {
		this.accessService = accessService;
	}
	
	@RequestMapping("allAccesss")
	public String allAccesss(Map<String,Object> map) {
		List<Access> allAccesss = accessService.allAccesss();
		map.put("allAccesss", allAccesss);
		return "accesss";
	}
	
	@RequestMapping("addAccess")
	public String addAccess(Access access,HttpServletRequest request) {
		String work="增加了一个权限";
		User user = (User) request.getSession().getAttribute("userFors");
		String name=user.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
		
		accessService.addAccess(access);
		return "addAccessSuccess";
	}
	
	@RequestMapping("deleteAccess")
	public String deleteAccess(@RequestParam("id") int id,HttpServletRequest request) {
		String work="删除了一个权限";
		User user = (User) request.getSession().getAttribute("userFors");
		String name=user.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
		accessService.deleteAccess(id);
		return "redirect:allAccesss";
	}
	
	@RequestMapping("access1")
	public String access1(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("userFors");
		int roleid = user_roleService.queryRidByUid(user.getId());
		int accessid=accessService.qureyIdByname("access1");
		Role_access role_access=new Role_access();
		role_access.setRoleid(roleid);
		role_access.setAccessid(accessid);
		int count=Role_accessService.queryRole_access(role_access);
		if(count==0) {
			return "noaccess";
		}else {
			return "redirect:/accesss/access1.jsp";
		}
	}
	
	@RequestMapping("access2")
	public String access2(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("userFors");
		int roleid = user_roleService.queryRidByUid(user.getId());
		int accessid=accessService.qureyIdByname("access2");
		Role_access role_access=new Role_access();
		role_access.setRoleid(roleid);
		role_access.setAccessid(accessid);
		int count=Role_accessService.queryRole_access(role_access);
		if(count==0) {
			return "noaccess";
		}else {
			return "redirect:/accesss/access2.jsp";
		}
	}
	
	@RequestMapping("access3")
	public String access3(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("userFors");
		int roleid = user_roleService.queryRidByUid(user.getId());
		int accessid=accessService.qureyIdByname("access3");
		Role_access role_access=new Role_access();
		role_access.setRoleid(roleid);
		role_access.setAccessid(accessid);
		int count=Role_accessService.queryRole_access(role_access);
		if(count==0) {
			return "noaccess";
		}else {
			return "redirect:/accesss/access3.jsp";
		}
	}
	
	@RequestMapping("access4")
	public String access4(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("userFors");
		int roleid = user_roleService.queryRidByUid(user.getId());
		int accessid=accessService.qureyIdByname("access4");
		Role_access role_access=new Role_access();
		role_access.setRoleid(roleid);
		role_access.setAccessid(accessid);
		int count=Role_accessService.queryRole_access(role_access);
		if(count==0) {
			return "noaccess";
		}else {
			return "redirect:/accesss/access4.jsp";
		}
	}
	
	@RequestMapping("access5")
	public String access5(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("userFors");
		int roleid = user_roleService.queryRidByUid(user.getId());
		int accessid=accessService.qureyIdByname("access5");
		Role_access role_access=new Role_access();
		role_access.setRoleid(roleid);
		role_access.setAccessid(accessid);
		int count=Role_accessService.queryRole_access(role_access);
		if(count==0) {
			return "noaccess";
		}else {
			return "redirect:/accesss/access5.jsp";
		}
	}
}
