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
<h3 style="text-align:center;">为该用户修改角色</h3>
      
        <div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/MyGraduate/user_role/updateUser_role" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" name="userid" placeholder="<%=request.getParameter("userid") %>" value="<%=request.getParameter("userid") %>" readonly>
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="text" class="form-control" id="inputPassword3" name="roleid" placeholder=修改角色编号为(请查看角色表填写角色编号)>
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">修改</button>
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div> -->
                    <button type="submit" class="btn btn-default">重置</button>
                </div>
             </form>
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
</div>
</body>
</html>