<%@page import="org.lianxi.entity.Task"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-image:url(sky.jpg);">
<h3 style="text-align:center;">该角色的所有任务</h3>
      <table border="1">
         <tr>
             <th>用户id</th>
             <th>任务名称</th>
             <th>任务详情</th>
             <th>删除该任务</th>
         </tr>    
         <%
         //获取requset中数据
         @SuppressWarnings("unchecked")
         List<Task> tasks=(List<Task>)request.getAttribute("myTasks");
         for(Task task:tasks){
         %>
         <tr>
         <td><%=task.getUserid() %></td>
         <td><%=task.getName() %></td>
         <td><%=task.getTask() %></td>
         <td><a href="/MyGraduate/task/deleteTask?id=<%=task.getId()%>&userid=<%=task.getUserid()%>">删除该任务</a></td>
         </tr>
         <%
         }  
         %>
         </table>
         <br>
         <br>
         <br>
         <br> 
         <a href="/MyGraduate/user/allusers" >返回</a>
</body>
</html>