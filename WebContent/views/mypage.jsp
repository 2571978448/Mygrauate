<%@page import="org.lianxi.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <%
         //获取requset中数据
         @SuppressWarnings("unchecked")
         User user=(User)session.getAttribute("userFors");
         %>
         <h3 style="text-align:center;">员工主页</h3>
       <nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">欢迎,<%=user.getName() %></a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="/MyGraduate/user/logout">退出登录</a></a></li>
			<li><a href="/MyGraduate/task/myTasks?userid=<%=user.getId() %>">查看任务</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					权限
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="/MyGraduate/access/access1">测试权限1</a></li>
					<li><a href="/MyGraduate/access/access2">测试权限2</a></li>
					<li><a href="/MyGraduate/access/access3">测试权限3</a></li>
					<li><a href="/MyGraduate/access/access4">测试权限4</a></li>
					<li><a href="/MyGraduate/access/access5">测试权限5</a></li>
					<li class="divider"></li>
					<!-- <li><a href="#">分离的链接</a></li>
					<li class="divider"></li>
					<li><a href="#">另一个分离的链接</a></li> -->
				</ul>
			</li>
		</ul>
	</div>
	</div>
</nav>
         
</body>
</html>