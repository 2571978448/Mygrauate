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
<body style="background-image:url(sky.jpg);">
       <%
         //获取requset中数据
         @SuppressWarnings("unchecked")
         User user=(User)session.getAttribute("userFors");
         %>
         <h3 style="text-align:center;">管理员主页</h3>
       <nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="#">欢迎,<%=user.getName() %></a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="/MyGraduate/user/logout">退出登录</a></a></li>
			<li><a href="#">任务</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					管理员管理
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="/MyGraduate/customer/allCustomers">查看所有顾客</a></li>
					<li><a href="/MyGraduate/user/allusers">查看所有用户</a></li>
					<li><a href="/MyGraduate/role/allroles">查看所有角色</a></li>
					<li><a href="/MyGraduate/access/allAccesss">查看所有权限</a></li>
					<li><a href="/MyGraduate/data/allDatas">查看所有操作日志</a></li>
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