package org.lianxi.mapper;

import java.util.List;

import org.lianxi.entity.Task;

public interface TaskMapper {
     public void addTask(Task task);
     public List<Task> myTasks(String userid);
     public void deleteTask(int id);
}
