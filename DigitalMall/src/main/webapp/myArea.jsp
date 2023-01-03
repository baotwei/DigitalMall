<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<head>
	<title>首页</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="before/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="before/css/slider.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="before/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="before/js/move-top.js"></script>
	<script type="text/javascript" src="before/js/easing.js"></script>
	<script type="text/javascript" src="before/js/startstop-slider.js"></script>
	<link rel="stylesheet" href="before/css/font-awesome.min.css">

	<script src="behind/commons/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
	.login_box{
		width: 360px;
		background: #FFFFFF;
		margin: 0px auto;
	}
	.login_title{
		font-size: 25px;
		text-align: center;
		color: #FF7F50;
		padding: 15px 0;
		width: 300px;
		margin: 0 auto;
		border-bottom: solid 1px #CCCCCC;
	}
	.form_text_ipt{
		width: 300px;
		height: 40px;
		border: solid 1px #CCCCCC;
		margin: 20px auto 0 auto;
		background: #FFFFFF;
	}
	.form_check_ipt{
		width: 300px;
		margin:  10px auto;
		overflow: hidden;
	}


	.form_text_ipt input{
		width: 290px;
		height: 30px;
		margin: 5px;
		border: none;
		font-family: "微软雅黑";
		font-size: 15px;
		color: #666;
	}
	.check_left label{
		cursor: pointer;
	}
	.check_left label input{
		position: relative;
		top: 2px;
	}
	.form_btn{
		width: 300px;
		height: 40px;
		margin:  10px auto;
	}
	.form_btn button{
		width: 100%;
		height: 100%;
		border: none;
		color: #FFFFFF;
		font-size: 14px;
		background: #FF7F50;
		cursor: pointer;
	}
	.form_reg_btn{
		width: 300px;
		margin: 0 auto;
		font-size: 14px;
		color: #666;
	}
	.ececk_warning{
		font-size: 13px;
		color: red;
		width: 300px;
		margin: 0 auto;
		display: none;
	}
</style>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="headertop_desc">
				<div class="call">
					<p><span>需要帮忙？</span> 致电我们 <span class="number">1-22-3456789</span></p>
				</div>
				<div class="account_desc">
					<ul id="user_ul">
						<li><a href="register">注册</a></li>
						<li><a href="login">登录</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="header_top">
				<div class="logo">
					<a href="index.jsp"><img src="before/images/logo.png" alt="" /></a>
				</div>

				<div class="cart">
					<p>欢迎来到我们的网上商店！
						<span id="js_show"><svg t="1620659996167" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1742" width="32" height="32"><path d="M919.3 259.8l-519.2-44.5c-22.5 0-47.6 18.2-40.7 40.7l83.8 312.1c9.5 28.2 31.4 28.5 53.9 28.5h391.7c22.5 0 40.7-18.2 40.7-40.7L960 306c0-22.4-12.5-43.7-40.7-46.2z m-77.9 383.9s69 36.4-3 86.4H349.2L199.2 214l-113-2.5S32 153.3 93 122.4L262.4 136l138.9 507.7h440.1zM449.2 759.3c-39.3 0-71.2 31.9-71.2 71.2 0 39.3 31.9 71.1 71.2 71.1 39.3 0 71.2-31.9 71.2-71.1-0.1-39.4-31.9-71.2-71.2-71.2z m322.1 1.3c-39 0-70.5 31.6-70.5 70.5 0 39 31.6 70.5 70.5 70.5 39 0 70.5-31.6 70.5-70.5 0-39-31.6-70.5-70.5-70.5z" p-id="1743" fill="#d81e06"></path></svg></span>
					</p>
				</div>
				<div class="clear"></div>
			</div>
			<div class="header_bottom">
				<div class="menu">
					<ul>
				<li><a href="index">商城首页</a></li>
				<li><a id="products" href="products">全部产品</a></li>
				<div class="clear"></div>
					</ul>
				</div>
				<div class="search_box">
					<form>
						<input type="text" id="searchGoods" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input
						 type="submit" value="">
					</form>
				</div>
				<div class="clear"></div>
			</div>

			<div class="header_slide">

				<div class="wrap login_wrap">
					<div class="content">

						<div class="logo"></div>

						<div class="login_box">

							<div class="login_form">
								<div class="login_title">
									密码修改
								</div>
								<form action="#" method="post" id="registerFrm">
									<div class="form_text_ipt">
										<input name="email" id="emailInput" type="text" placeholder="邮箱" readonly>
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
										<button type="button" id="register">密码修改</button>
									</div>

								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="footer">
		<div class="wrap">
			<div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<h4>关于我们</h4>
					<ul>
						<li><a href="#">品牌服务</a></li>
						<li><a href="#">常见问题</a></li>
						<li><a href="#">相关下载</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>配送方式</h4>
					<ul>
						<li><a href="#">配送费用</a></li>
						<li><a href="#">签收须知</a></li>
						<li><a href="#">隐私政策</a></li>
						<li><a href="#">网站地图</a></li>
						<li><a href="#">指定快递</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>服务支持</h4>
					<ul>
						<li><a href="#">服务保证</a></li>
						<li><a href="#">售后服务</a></li>
						<li><a href="#">售后网点查看</a></li>
						<li><a href="#">碎片宝</a></li>
						<li><a href="#">手机延保</a></li>
					</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>联系方式</h4>
					<ul>
						<li><span>+91-123-456789</span></li>
						<li><span>+00-123-000000</span></li>
					</ul>
					<div class="social-icons">
						<h4>关注我们</h4>
						<ul>
							<li><a href="#" target="_blank"><img src="before/images/facebook.png" alt="" /></a></li>
							<li><a href="#" target="_blank"><img src="before/images/twitter.png" alt="" /></a></li>
							<li><a href="#" target="_blank"><img src="before/images/skype.png" alt="" /> </a></li>
							<li><a href="#" target="_blank"><img src="before/images/dribbble.png" alt="" /></a></li>
							<li><a href="#" target="_blank"> <img src="before/images/linkedin.png" alt="" /></a></li>
							<div class="clear"></div>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
		<script type="text/javascript">
				$.fn.loadLoginUser=function(){
					$.ajax({
						url:"loginUser",
						type:"get",
						dataType:"json",
						// headers:{
						//     Accept:"application/json;charset=utf-8",
						//     token:""+$.cookie("token")
						// },
						success:function (result) {
							if(result.code===100){
								console.log(result);
								if (result.extend.loginUser.userType==1||result.extend.loginUser.userType==2){
									$("#user_ul").empty();
									$("#user_ul").append($("<li><a><i class=\"fa fa-user\" aria-hidden=\"true\"></i> "+
											result.extend.loginUser.userName
											+ "</a></li>"));
									$("#user_ul").append($(
											"<li><a href=\"managerIndex\"><i class=\"fa fa-tag\" aria-hidden=\"true\"></i> 管理系统</a></li>" +
											"<li><a href=\"myArea\">我的账户</a></li>"
									));
									$("<li><a href=\"#\" id=\"logout_nav\"><i class=\"fa fa-sign-out\" aria-hidden=\"true\"></i> 注销</a></li>\n").appendTo($("#user_ul"));
								}else if(result.extend.loginUser.userType==3||result.extend.loginUser.userType==4){
									$("#user_ul").empty();
									$("#user_ul").append($("<li><a><i class=\"fa fa-user\" aria-hidden=\"true\"></i> "+
											result.extend.loginUser.userName
											+ "</a></li>"));
									$("#user_ul").append($(
											"<li><a href=\"myArea\">我的账户</a></li>"
									));
									$("<li><i class=\"fa fa-sign-out\" aria-hidden=\"true\"></i><a href=\"#\" id=\"logout_nav\"> 注销</a></li>\n").appendTo($("#user_ul"));

								}
								$("#emailInput").val(result.extend.loginUser.email);
							}
						}
					});
				};
				$.fn.logout=function () {
					$.ajax({
						url:"logout",
						type:"get",
						dataType:"json",
						// headers:{
						//     Accept:"application/json;charset=utf-8",
						//     token:""+$.cookie("token")
						// },
						success:function (result) {
							if(result.code===100){
								// $.cookie("token",result.extend.token,{expires:7,path:'/'});
								// alert($.cookie("token"));
								window.location.href=result.target;
							}
						}
					});
				};
				$(function () {
					$.fn.loadLoginUser();
				});

				$(document).on("click","#logout_nav",function () {
					$.fn.logout();
				});

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
										url: "updatePassword",
										data: {"email":$('#emailInput').val(),"password":$("#passwordInput").val()},
										type: "GET",
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

</body>
</html>
