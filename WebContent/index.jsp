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
<header><h1 style="text-align:center;">基本RBAC模型的权限管理框架的设计与实现</h1></header>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
	<div class="navbar-header">
		<a class="navbar-brand" href="/MyGraduate/views/addcustomer.jsp">联系我们</a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">公司业务</a></li>
			<li><a href="#">公司简介</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					公司信息
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu">
					<li><a href="example1.jsp">信息展示</a></li>
					<li><a href="example2.jsp">文化展示</a></li>
					<li><a href="example3.jsp">业务体系</a></li>
					<li><a href="example4.jsp">成就</a></li>
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
       <h2 style="text-align:center;">员工登陆页面</h2>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/MyGraduate/user/index" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3"  name="id" placeholder="账 号">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密 码">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">登录</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>