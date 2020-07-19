package org.lianxi.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.lianxi.entity.Task;
import org.lianxi.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("task")
public class TaskController {

	@Autowired
	private TaskService taskService;
	
	public void setTaskService(TaskService taskService) {
		this.taskService = taskService;
	}
	
	/*@RequestMapping(value = "queryTaskByUid")
	public String queryTaskByUid(@RequestParam("")) {
		
	}*/

	@RequestMapping(value = "addTask")
	public String addTask(Task task) {
		taskService.addTask(task);
		return "redirect:/user/allusers";
	}
	
	@RequestMapping(value = "myTasks")
	public String myTasks(@RequestParam("userid") String userid,Map<String,Object> map) {
		List<Task> myTasks = taskService.myTasks(userid);
		map.put("myTasks", myTasks);
		return "mytasks";
	}
	
	@RequestMapping(value = "deleteTask")
	public String deleteTask(@RequestParam("id") int id,@RequestParam("userid") String userid1,HttpServletRequest request) {
		taskService.deleteTask(id);
		request.setAttribute("userid",userid1);
		return "forward:myTasks";
	}
}
