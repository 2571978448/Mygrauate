package org.lianxi.service.impl;

import java.util.List;

import org.lianxi.entity.Task;
import org.lianxi.mapper.TaskMapper;
import org.lianxi.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TaskServiceImpl implements TaskService{

	@Autowired
	private TaskMapper taskMapper;
	
	@Override
	public void addTask(Task task) {
		taskMapper.addTask(task);
	}

	public void setTaskMapper(TaskMapper taskMapper) {
		this.taskMapper = taskMapper;
	}

	@Override
	public List<Task> myTasks(String userid) {
		return taskMapper.myTasks(userid);
	}

	@Override
	public void deleteTask(int id) {
		taskMapper.deleteTask(id);
	}

}
