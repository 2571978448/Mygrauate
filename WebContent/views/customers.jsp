<%@page import="org.lianxi.entity.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"> 
	<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<title>Insert title here</title>
</head>
<body style="background-image:url(sky.jpg);">

<div class="container">
	<h3 style="text-align:center;">所有顾客</h3>
	<table border="1" class="table table-bordered">
         <tr>
             <th>编号</th>
             <th>姓名</th>
             <th>电话号码</th>
             <th>电子邮箱</th>
         </tr>
         
         <%
         //获取requset中数据
         @SuppressWarnings("unchecked")
         List<Customer> customers=(List<Customer>)request.getAttribute("allCustomers");
         for(Customer customer:customers){
         %>
         <tr>
         <td><%=customer.getId() %></td>
         <td><%=customer.getName() %></td>
         <td><%=customer.getPhonenumber() %></td>
         <td><%=customer.getEmail() %></td>
         </tr>
         <%
         }  
         %>
         </table>
</div>
         <br>
         <br>
         <br>
         <br>
         <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/MyGraduate/views/homepage.jsp" method="post">
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-default">返回</button>
                </div>
            </form>
        </div>
</body>
</html>