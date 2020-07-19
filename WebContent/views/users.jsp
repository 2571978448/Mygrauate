<%@page import="org.lianxi.entity.User"%>
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
<h3 style="text-align:center;">所有用户</h3>
         <table border="1" class="table table-bordered">
         <tr>
             <th>账号</th>
             <th>密码</th>
             <th>名字</th>
             <th>年龄</th>
             <th>电话号码</th>
             <th>邮箱</th>
             <th>住址</th>
             <th>是否管理员（1：是；0：不是）</th>
             <th>是否有效（）</th>
             <th>删除</th>
             <th>查看角色</th>
             <th>为用户分配角色</th>
             <th>修改角色</th>
             <th>查看任务</th>
             <th>分配任务</th>
         </tr>
         
         <%
         //获取requset中数据
         @SuppressWarnings("unchecked")
         List<User> users=(List<User>)request.getAttribute("users");
         for(User user:users){
         %>
         <tr>
         <td><%=user.getId() %></td>
         <td><%=user.getPassword() %></td>
         <td><%=user.getName() %></td>
         <td><%=user.getAge() %></td>
         <td><%=user.getPhonenumber() %></td>
         <td><%=user.getEmail() %></td>
         <td><%=user.getAddress() %></td>
         <td><%=user.isIs_admin() %></td>
         <td><%=user.isStstus() %></td>
         <td><a href="<%=request.getContextPath()%>/user/deleteUser?id=<%=user.getId() %>">删除</a></td>
         <td><a href="/MyGraduate/user_role/queryRoleByUserid?userid=<%=user.getId() %>">查看角色</a></td>
         <td><a href="/MyGraduate/views/addUser_role.jsp?userid=<%=user.getId() %>">为该用户分配角色</a></td>
         <td><a href="/MyGraduate/views/updateUser_role.jsp?userid=<%=user.getId() %>">修改角色</a></td>
         <td><a href="/MyGraduate/task/myTasks?userid=<%=user.getId() %>">查看任务</a></td>
         <td><a href="/MyGraduate/views/addtask.jsp?userid=<%=user.getId() %>">分配任务</a></td>
         </tr>
         <%
         }  
         %>
         </table><br><br>
         <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/MyGraduate/user/queryUserByName" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="name" placeholder="名 字">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">跟据名字查找</button>
                </div>
            </form>
            <form class="form-horizontal" action="/MyGraduate/user/queryUserById" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="id" placeholder="账 号">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">跟据账号查找</button>
                </div>
            </form><br><br>
            <form class="form-horizontal" action="/MyGraduate/views/adduser.jsp" method="post">
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">增加一个员工</button>
                </div>
            </form>
            <form class="form-horizontal" action="/MyGraduate/views/homepage.jsp" method="post">
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">返回</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>