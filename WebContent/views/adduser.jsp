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
<body>
<h3 style="text-align:center;">增加一个用户</h3>
<div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/MyGraduate/user/adduser" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="id" placeholder="账 号">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="inputPassword3" name="password" placeholder="密 码">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="name" placeholder="名 字">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="age" placeholder="年 龄">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="phonenumber" placeholder="电话号码">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="email" placeholder="邮 箱">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="address" placeholder="住址">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">增加</button>
                    <button type="reset" class="btn btn-default">重置</button>
                </div>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/MyGraduate/user/allusers" method="post">
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
      <h2 style="text-align:center;">增加一个员工</h2>
        <div style="height:23%;width:18%;text-align:center;margin:auto">
        <form name="add" action="/MyGraduate/user/adduser" method="post">
        <table>
         <tr>
         <td><div align="right">账号</div>
         <td><input type="text" name="id"></td>
         </tr>
         <tr>
         <td><div align="right">密码</div>
         <td><input type="password" name="password"></td>
         </tr>
         <tr>
         <td><div align="right">名字</div>
         <td><input type="text" name="name"></td>
         </tr>
         <tr>
         <td><div align="right">年龄</div>
         <td><input type="text" name="age"></td>
         </tr>
         <tr>
         <td><div align="right">电话号码</div>
         <td><input type="text" name="phonenumber"></td>
         </tr>
         <tr>
         <td><div align="right">邮箱</div>
         <td><input type="text" name="email"></td>
         </tr>
         <tr>
         <td><div align="right">地址</div>
         <td><input type="text" name="address"></td>
         </tr>
         <tr>
         <td><input type="submit" name="submit" value="注册"></td>
         <td><input type="reset" name="reset" value="重置"></td>
         </tr>
         </table>
        </form>
        <br>
        <br>
        <br>
        <br>
        <a href="/MyGraduate/user/allusers">返回</a>
        </div>
</body>
</html>