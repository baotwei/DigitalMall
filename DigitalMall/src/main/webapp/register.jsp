<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>注册</title>
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
							注册
						</div>
						<form action="#" method="post" id="registerFrm">
							<div class="form_text_ipt">
								<input name="userName" id="userNameInput" type="text" placeholder="用户名">
							</div>
							<div class="ececk_warning" id="userNameError"><span>用户名不能为空</span></div>

							<div class="form_text_ipt">
								<input name="email" id="emailInput" type="text" placeholder="邮箱">
							</div>
							<div class="ececk_warning" id="emailError"><span>邮箱不能为空</span></div>

							<div class="form_text_ipt">
								<input name="password" id="passwordInput" type="password" placeholder="密码">
							</div>
							<div class="ececk_warning" id="passwordError"><span>密码不能为空</span></div>

							<div class="form_text_ipt">
								<input name="repassword" id="repasswordInput" type="password" placeholder="重复密码">
							</div>
							<div class="ececk_warning" id="repasswordError"><span>密码不能为空</span></div>
							<div class="form_text_ipt">
										<input type="text" name="verifyCode" id="verifyCode" placeholder="验证码">
							</div>
							<div class="ececk_warning" id="verifyCodeError"><span>验证码不能为空</span></div>

							<div  style="margin:5px 20px 0 30px">
								<img src="Kaptcha.jpg" onclick="changeVerifyCode()" id="yzmImg" style="cursor: pointer;">
								<a href="javascript:void(0)" onclick="changeVerifyCode()">看不清，换一张</a>
							</div>

							<div class="form_btn">
								<button type="button" id="register">注册</button>
							</div>
							<div class="form_reg_btn">
								<span>已有帐号？</span><a href="login">马上登录</a>
							</div>
						</form>
						<div class="other_login">
							<div class="left other_left">
								<span>其它登录方式</span>
							</div>
							<div class="right other_right">
								<a href="#"><i class="fa fa-qq fa-2x"></i></a>
								<a href="#"><i class="fa fa-weixin fa-2x"></i></a>
								<a href="#"><i class="fa fa-weibo fa-2x"></i></a><br>
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
	//点击切换验证码
	function changeVerifyCode(){
		$("#yzmImg").attr("src","Kaptcha.jpg?"+Math.floor(Math.random()*100));
	}

	//提交
	function doSubmit() {
		var verifyCodeValue = $("#verifyCode").val();
		if(verifyCodeValue.replace(/\s/g,"") == "") {
			$(this).css({
				'color':'red',
			});
			$(this).parent().css({
				'border':'solid 1px red',
			});
			$("#verifyCodeError").show();
			$('#verifyCode').focus();
		}else {
			//提交前先异步检查验证码是否输入正确
			var verifyUrl = "${pageContext.request.contextPath}/servlet/VerifyServlet?verifyCode="+verifyCodeValue;
			$.ajax({
				type:"GET",
				url:verifyUrl,
				success:function(returnData){
					if(returnData!="Y") {
						$(this).css({
							'color':'red',
						});
						$(this).parent().css({
							'border':'solid 1px red',
						});
						$("#verifyCodeError").empty();
						$("#verifyCodeError").append("<span>请输入正确的验证码!</span>");
						$("#verifyCodeError").show();
						$('#verifyCode').focus();
					}else {
						//验证码正确，进行提交操作
						// $("#verifyCodeError").empty();
						// $("#verifyCodeError").append("<span style='color: #3c763d'>验证码输入正确，注册中......</span>");
						// $("#verifyCodeError").show();

						$.ajax({
							url: "registerUser",
							data: $("#registerFrm").serialize(),
							type: "POST",
							dataType: "json",
							// headers:{
							// 	Accept:"application/json;charset=utf-8",
							// 	token:""+$.cookie("token")
							// },
							success: function (result){
								console.log(result);
								if(result.code === 100) {
									window.location.href = result.target;
								}
							}});
					}
				},
				error:function(e){
					alert(e);
				}
			});
		}
	}


	$("#register").click(function (){
		//用户名校验
		if($("#userNameInput").val()==""){
			$(this).css({
				'color':'red',
			});
			$(this).parent().css({
				'border':'solid 1px red',
			});
			$("#userNameError").show();
			$('#userNameInput').focus();
			return ;
		}
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
		}else if(!/^[a-zA-Z]\w{5,17}$/.test($("#passwordInput").val())){
			$(this).css({
				'color':'red',
			});
			$(this).parent().css({
				'border':'solid 1px red',
			});
			$("#passwordError").empty();
			$("#passwordError").append("<span>密码格式不合法！<br>以字母开头，长度在6~18之间，只能包含字母、数字和下划线</span>");
			$("#passwordError").show();
			$('#passwordInput').focus();
			return ;
		}
		//重复密码校验
		if($("#repasswordInput").val()==""){
			$(this).css({
				'color':'red',
			});
			$(this).parent().css({
				'border':'solid 1px red',
			});
			$("#repasswordError").show();
			$('#repasswordInput').focus();
			return ;
		}else if($("#repasswordInput").val()!=$("#passwordInput").val()){
			$(this).css({
				'color':'red',
			});
			$(this).parent().css({
				'border':'solid 1px red',
			});
			$("#repasswordError").empty();
			$("#repasswordError").append("<span>重复密码不正确</span>");
			$("#repasswordError").show();
			$('#repasswordInput').focus();
			return ;
		}
		doSubmit();
	});
</script>
</html>
