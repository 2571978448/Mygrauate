<%@page import="org.lianxi.entity.Access"%>
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
<h3 style="text-align:center;">该角色对应的全部权限</h3>
      <table border="1" class="table table-bordered">
         <tr>
             <th>权限编号</th>
             <th>权限名字</th>
             <th>权限地址</th>
             <th>是否有效（）</th>
             <th>删除该权限</th>
         </tr>
         
         <%
         //获取requset中数据
         @SuppressWarnings("unchecked")
         List<Access> accesss=(List<Access>)request.getAttribute("accesss");
         for(Access access:accesss){
         %>
         <tr>
         <td><%=access.getId() %></td>
         <td><%=access.getName() %></td>
         <td><%=access.getUrl() %></td>
         <td><%=access.isStstus() %></td>
         <td><a href="/MyGraduate/role_access/deleteRole_access?roleid=<%=(int)request.getAttribute("roleid") %>&accessid=<%=access.getId()%>">该角色删除该权限</a>
         </tr>
         <%
         }  
         %>
         </table>
         <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/MyGraduate/views/addRole_access.jsp?roleid=<%=request.getAttribute("roleid")%>" method="post">
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">为该角色增加一个权限</button>
                </div>
            </form>
            <form class="form-horizontal" action="/MyGraduate/role/allroles" method="post">
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">返回</button>
                </div>
            </form>
        </div>
 
</body>
</html>