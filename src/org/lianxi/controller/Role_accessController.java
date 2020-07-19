package org.lianxi.controller;

import java.util.ArrayList;
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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("role_access")
public class Role_accessController {
    
	@Autowired
	private Role_accessService role_accessService;
	@Autowired
	private AccessService accessService;
	@Autowired
	private DataService dataService;

	public void setRole_accessService(Role_accessService role_accessService) {
		this.role_accessService = role_accessService;
	}
	
	@RequestMapping("myAccesss")
	public String myAccesss(@RequestParam("roleid") int roleid,Map<String,Object> map,HttpServletRequest request) {
		request.setAttribute("roleid", roleid);
		List<Role_access> r_as= role_accessService.queryR_aByRoleid(roleid);
		List<Access> accesss=new ArrayList<Access>();
		for(Role_access r_a:r_as) {
			Access access = accessService.queryaccess(r_a.getAccessid());
			accesss.add(access);
		}
		map.put("accesss", accesss);
		return "myaccesss";
	}
	
	@RequestMapping("addRole_access")
	public String addRole_access(Role_access role_access,HttpServletRequest request) {
		String work="增加了一个角色权限对应关系";
		User user = (User) request.getSession().getAttribute("userFors");
		String name=user.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
	    
		boolean result = role_accessService.addRole_access(role_access);
		if(result) {
			return "addR_aSuccess";
		}else {
			return "addR_aSuccess1";
		}
	}
	
	@RequestMapping("deleteRole_access")
	public String deleteRole_access(@RequestParam("roleid") int roleid,@RequestParam("accessid") int accessid,HttpServletRequest request) {
		String work="删除了一个角色权限对应关系";
		User user = (User) request.getSession().getAttribute("userFors");
		String name=user.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
	    
	    Role_access role_access=new Role_access();
	    role_access.setRoleid(roleid);
	    role_access.setAccessid(accessid);
	    role_accessService.deleteRole_aceess(role_access);
	    
		return "redirect:/views/homepage.jsp";
	}

	public void setAccessService(AccessService accessService) {
		this.accessService = accessService;
	}

	public void setDataService(DataService dataService) {
		this.dataService = dataService;
	}
	
}
