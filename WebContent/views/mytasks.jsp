<%@page import="org.lianxi.entity.Task"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body style="background-image:url(sky.jpg);">
<h3 style="text-align:center;">该用户的任务</h3>
      <table border="1" class="table table-bordered">
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
</body>
</html>