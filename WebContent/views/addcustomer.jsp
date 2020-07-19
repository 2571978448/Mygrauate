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
      <h3 style="text-align:center;">请留下您的联系方式</h3>
      
        <div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/MyGraduate/customer/addcustomer" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="name" placeholder="名 字">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="text" class="form-control" id="inputPassword3" name="phonenumber" placeholder=电话号码>
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3"  name="email" placeholder="邮 箱">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">提交</button>
                </div>
            </form>
            <form class="form-horizontal" action="/MyGraduate/index.jsp" method="post">
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