package org.lianxi.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.lianxi.entity.Data;
import org.lianxi.entity.User;
import org.lianxi.service.DataService;
import org.lianxi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@SessionAttributes(value = "userFors")   //如果要在request域中存放student4，则同时把student4放到session中，student4是属性名
@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
    private UserService userService;
	@Autowired
	private DataService dataService;
	
	@RequestMapping("adduser")
	public String addUser(User user,HttpServletRequest request) {
		String work="增加了一个用户";
		User user2 = (User) request.getSession().getAttribute("userFors");
		String name=user2.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
		User user1 = userService.queryUserById1(user.getId());
		if(user1==null) {
		userService.addUser(user);
		return "success";
		}
		else {
			return "success1";
		}
	}
	
	@RequestMapping(value = "allusers")
	public String allusers(Map<String,Object> map) {
		List<User> users=userService.queryAllUsers();
		map.put("users", users);
		return "users";
	}
	
	@RequestMapping(value = "queryUserByName")
	public String queryUserByName(@RequestParam("name") String name,Map<String,Object> map) {
//		System.out.println(name);
		List<User> users=userService.queryUserByName(name);
		System.out.println(users);
		map.put("users", users);
		return "user";
	}
	
	@RequestMapping(value = "queryUserById")
	public String queryUserById(@RequestParam("id") String id,Map<String,Object> map) {
//		System.out.println(name);
		List<User> users=userService.queryUserById(id);
//		System.out.println(users);
		map.put("users", users);
		return "user";
	}
	
	@RequestMapping(value = "deleteUser",method = RequestMethod.GET)
	public String deleteUser(@RequestParam("id") String id,HttpServletRequest request) {
		String work="删除了一个用户";
		User user2 = (User) request.getSession().getAttribute("userFors");
		String name=user2.getName();
	    Data data=new Data();
	    data.setName(name);
	    data.setWork(work);   
	    dataService.addData(data);
//		System.out.println(name);
		userService.deleteUser(id);
		return "redirect:allusers";
	}
	
	@RequestMapping("index")
	public String index(User user,Map<String,Object> map) {
		int count = userService.queryUser(user);
		if(count==0) {
			return "indexfaild";
		}else {
			User userFors=userService.queryUserById1(user.getId());
			map.put("userFors", userFors);
			if(userFors.isIs_admin()) {
				return "homepage";
			}else {
				return "mypage";
			}
		}
	}
	
	@RequestMapping(value = "logout")
	public String logout(HttpServletRequest request) {
		request.getSession().removeAttribute("userFors");
		return "redirect:/index.jsp";
	}
	
}
