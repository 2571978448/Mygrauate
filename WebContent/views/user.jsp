<%@page import="org.lianxi.entity.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 style="text-align:center;">该用户信息</h3>
     <table border="1">
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
         <td><a href="<%=request.getContextPath()%>/DeleteServlet?uid=<%=user.getId() %>">删除</a></td>
         <td><a href="<%=request.getContextPath()%>/QueryRoleByUser?uid=<%=user.getId() %>">查看角色</a></td>
         <td><a href="<%=request.getContextPath()%>/adduser_role.jsp?uid=<%=user.getId() %>">为该用户分配角色</a></td>
         <td><a href="<%=request.getContextPath()%>/updateuser_role.jsp?uid=<%=user.getId() %>">修改角色</a></td>
         <td><a href="<%=request.getContextPath()%>/QueryAllTasksServlet?uid=<%=user.getId() %>">查看任务</a></td>
         <td><a href="<%=request.getContextPath()%>/addtask.jsp?uid=<%=user.getId() %>">分配任务</a></td>
         </tr>
         <%
         }  
         %>
         </table>
         <a href="/MyGraduate/user/allusers">返回</a>
</body>
</html>