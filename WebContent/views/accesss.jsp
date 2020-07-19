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
<h3 style="text-align:center;">所有权限</h3>
      <table border="1" class="table table-bordered">
         <tr>
             <th>编号</th>
             <th>权限名称</th>
             <th>权限地址</th>
             <th>是否有效（）</th>
             <th>删除该权限</th>
         </tr>
         
         <%
         //获取requset中数据
         @SuppressWarnings("unchecked")
         List<Access> accesss=(List<Access>)request.getAttribute("allAccesss");
         for(Access access:accesss){
         %>
         <tr>
         <td><%=access.getId() %></td>
         <td><%=access.getName() %></td>
         <td><%=access.getUrl() %></td>
         <td><%=access.isStstus() %></td>
         <td><a href="/MyGraduate/access/deleteAccess?id=<%=access.getId() %>">删除该权限</a></td>
         </tr>
         <%
         }  
         %>
         </table>
         <div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/MyGraduate/views/addAccess.jsp" method="post">
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">增加一个权限</button>
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
</div>     
         
</body>
</html>