<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
  String path =request.getContextPath();
  request.setAttribute("path",path);
%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="${path}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${path}/css/style.css">
<link rel="stylesheet" type="text/css" href="${path}/css/login.css">
<link rel="apple-touch-icon-precomposed" href="${path}/images/icon/icon.png">
<link rel="shortcut icon" href="${path}/images/icon/favicon.ico">
<script src="${path}/js/jquery-2.1.4.min.js"></script>
<!--[if gte IE 9]>
  <script src="${path}/js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="${path}/js/html5shiv.min.js" type="text/javascript"></script>
  <script src="${path}/js/respond.min.js" type="text/javascript"></script>
  <script src="${path}/js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
  <script>window.location.href='upgrade-browser.html';</script>
<![endif]-->
</head>

<body class="user-select">
<div class="container">
  <div class="siteIcon"><img src="${path}/images/icon/icon.png" alt="" data-toggle="tooltip" data-placement="top" title="yandeguang" draggable="false" /></div>
  <form action="${path}/login/login"  id="formId" autocomplete="off" class="form-signin">
    <h2 class="form-signin-heading">管理员登录</h2>
    <label for="userName" class="sr-only">用户名</label>
    <input type="text" id="userName" name="username" class="form-control" placeholder="请输入用户名" required autofocus autocomplete="off" maxlength="10"> <br/>
    <label for="userPwd" class="sr-only">密码</label>
    <input type="password" id="userPwd" name="password" class="form-control" placeholder="请输入密码" required autocomplete="off" maxlength="18"><br/>
    <button class="btn btn-lg btn-primary btn-block" type="submit" id="login">登录</button>
  </form>
  <div class="footer">
    <p><a href="${path}/index" data-toggle="tooltip" data-placement="left" title="不知道自己在哪?">回到后台 →</a></p>
  </div>
</div>
<script src="${path}/js/bootstrap.min.js"></script>
<script type="application/javascript">

  //login
  $("").click(function () {
      $.ajax({
          type:"POST",
          url:"${path}/login/login",
          data:{"username":username,"password":password},
          success:function (result) {
              console.log(result);
          }
      })
  });

$('[data-toggle="tooltip"]').tooltip();
window.oncontextmenu = function(){
	//return false;
};
$('.siteIcon img').click(function(){
	window.location.reload();
});
$('#signinSubmit').click(function(){
	if($('#userName').val() === ''){
		$(this).text('用户名不能为空');
	}else if($('#userPwd').val() === ''){
		$(this).text('密码不能为空');
	}else{
		$(this).text('请稍后...');
	}
});
</script>
</body>
</html>