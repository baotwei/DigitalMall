<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>登录</title>
		<link rel="stylesheet" href="before/css/reset.css" />
		<link rel="stylesheet" href="before/css/common.css" />
		<link rel="stylesheet" href="before/css/font-awesome.min.css" />
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
	</head>
	<body>
		<div class="wrap login_wrap">
			<div class="content">
				<div class="logo"></div>
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							登录
						</div>
						<form action="#" method="post">
							
							<div class="form_text_ipt">
								<input name="email" id="emailInput" type="text" placeholder="邮箱">
							</div>
							<div class="ececk_warning" id="emailError"><span>邮箱不能为空</span></div>

							<div class="form_text_ipt">
								<input name="password" id="passwordInput" type="password" placeholder="密码">
							</div>
							<div class="ececk_warning" id="passwordError"><span>密码不能为空</span></div>

							<div class="form_check_ipt">
								<div class="left check_left">
									<label><input name="" type="checkbox"> 下次自动登录</label>
								</div>
								<div class="right check_right">
									<a href="#">忘记密码</a>
								</div>
							</div>
							<div class="form_btn">
								<button type="button" id="submit_login_btn">登录</button>
							</div>
							<div class="form_reg_btn">
								<span>还没有帐号？</span><a href="register">马上注册</a>
							</div>
						</form>
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
	</body>
	<script>

		//用户登录
		$("#submit_login_btn").click(function () {
			//数据校验
			//邮箱校验
			if($('#emailInput').val()=='') {
				$(this).css({
					'color':'red',
				});
				$(this).parent().css({
					'border':'solid 1px red',
				});
				$("#emailError").show();
				$('#emailInput').focus();
				return ;
			}else if(!/^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/.test($("#emailInput").val())){
				$(this).css({
					'color':'red',
				});
				$(this).parent().css({
					'border':'solid 1px red',
				});
				$("#emailError").empty();
				$("#emailError").append("<span>邮箱格式不正确</span>");
				$("#emailError").show();
				$('#emailInput').focus();
				return ;
			}
			//密码校验
			if($("#passwordInput").val()==""){
				$(this).css({
					'color':'red',
				});
				$(this).parent().css({
					'border':'solid 1px red',
				});
				$("#passwordError").show();
				$('#passwordInput').focus();
				return ;
			}
				//登录
				$.ajax({
					url:"loginInto",
					data:$("form").serialize(),
					type:"post",
					dataType:"json",
					success:function (result) {
						console.log(result.code);
						if(result.code === 100){
							// $.cookie("token",result.extend.token, { expires:7,path:'/'});
							// alert($.cookie("token"));
							// alert(result.target);
							window.location.href = result.target;
						}
					}
				});

		});
	</script>
</html>
