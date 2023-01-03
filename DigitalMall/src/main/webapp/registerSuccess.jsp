<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	
<head>
		<meta charset="utf-8">
		<title>注册成功</title>
		<link rel="stylesheet" href="before/css/reset.css" />
		<link rel="stylesheet" href="before/css/common.css" />
		<link rel="stylesheet" href="before/css/font-awesome.min.css" />
	</head>
<style>
	.login_wrap{
		background: url(before/images/logo_bg.jpg) no-repeat center;
		background-size: 100%;
	}
	.logo{
		width: 500px;
		height: 150px;
		margin: 0px auto;
		background: url(before/images/logowz.png) no-repeat center;
	}

</style>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				<div class="logo"></div>
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							注册
						</div>
							<div align="center" >
								<div id="finshSuccess" style="margin: 10px 0 10px 0"><img src="before/images/finish.png"/></div>
								<span>恭喜您，您已经完成注册！
								<br />
								<a id="time"></a>&nbsp;秒后将返回<a onclick="stop()"></a>登录页面</span>
							</div>
							
							
							</div>
							<div class="form_btn">
								<button type="button" onclick="javascript:window.location.href='login'">登录</button>
							</div>
							<div class="form_reg_btn">
								<span>还没有帐号？</span><a href="register">马上注册</a>
							</div>
						
						<div class="other_login">
							<div class="left other_left">
								<span>其它登录方式</span>
							</div>
							<div class="right other_right">
								<a href="#"><i class="fa fa-qq fa-2x"></i></a>
								<a href="#"><i class="fa fa-weixin fa-2x"></i></a>
								<a href="#"><i class="fa fa-weibo fa-2x"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="before/js/jquery.min.js" ></script>
		<script type="text/javascript" src="before/js/common.js" ></script>
		<script>
			 var i=3;
			function changeTime(){
			   document.getElementById("time").innerHTML=i;
			   i--;
			}
			changeTime();
			var inId=window.setInterval("changeTime()",1000);
			function stop(){
			   window.clearInterval(inId);
			}
			function autoRedirect(){
			window.location="login";
			}
			window.setInterval("autoRedirect()",3000);
		</script>
	</body>
</html>
