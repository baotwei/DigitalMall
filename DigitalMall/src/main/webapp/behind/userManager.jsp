<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>DMMS</title>

	<!-- Bootstrap -->
	<link href="behind/commons/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="behind/commons/bootstrap-select-dist/css/bootstrap-select.min.css" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="behind/commons/css/style.css" rel="stylesheet">
<style>
	.help-block{
		display: none;
		color: red;
	}
</style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
					aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">DMMS-数码商城管理系统</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="managerIndex">首页</a></li>
				<li class="active" id="userManager">
				</li>
				<li id="productsManager">
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#" id="loginUser_nav"><span class="glyphicon glyphicon-user"></span> 平台管理员:</a></li>
				<li><a href="index"><span class="glyphicon glyphicon-home"></span> 商城</a></li>
				<li><a href="#" id="logout_nav"><span class="glyphicon glyphicon-log-in"></span> 注销</a></li>
			</ul>
		</div>
		<!--/.nav-collapse -->
	</div><!--/.nav-collapse -->
	</div>
</nav>

<div class="modal fade bs-example-modal-lg" tabindex="-1"
	 role="dialog" aria-labelledby="myLargeModalLabel" id="userUnit_modify_modal">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">

			<div class="page-header">
				<h1>&nbsp;&nbsp;&nbsp;修改院校管理员</h1>
			</div>
			<form class="form-horizontal" role="form" id="userUnit_modify_frm">
				<div class="form-group">
					<label class="col-sm-2 control-label">用户名</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="userName"
							   placeholder="请输入用户名" id="userName_modify_input">
						<span id="userNameError" class="help-block">用户名不为空</span>
					</div>
				</div>

				<div class="form-group">
					<label class="col-sm-2 control-label">邮箱</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="email"
							   id="email_modify_input" placeholder="邮箱">
						<span id="emailError" class="help-block">邮箱不为空</span>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="userType_modify_select">用户类型</label>
					<div class="col-sm-8">
						<select id="userType_modify_select" name="userType" class="form-control selectpicker" title="请选择用户类型" data-width="300px">
<%--							<option value="0">全部用户类型</option>--%>
<%--							<option value="2">商家</option>--%>
<%--							<option value="3">用户</option>--%>

						</select>
						<span id="userTypeError" class="help-block">请选择用户类型！</span>
					</div>
				</div>

			</form>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" id="userUnit_modify_btn">保存</button>
			</div>
		</div>
	</div>
</div>
	    <div class="modal fade bs-example-modal-lg" tabindex="-1"
	         role="dialog" aria-labelledby="myLargeModalLabel" id="userUnint_add_modal">
	        <div class="modal-dialog modal-lg" role="document">
	            <div class="modal-content">
	
	                    <div class="page-header">
	                        <h1>&nbsp;&nbsp;&nbsp;新增用户</h1>
	                    </div>
	                    <form class="form-horizontal" role="form" id="userUnit_add_frm">
							<div class="form-group">
								<label class="col-sm-2 control-label">用户名</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" name="userName"
										   placeholder="请输入用户名" id="userName_add_input">
									<span id="userNameError" class="help-block">用户名不为空</span>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">密码</label>
								<div class="col-sm-8">
									<input type="password" class="form-control" name="password"
										   id="password_add_input" placeholder="密码">
									<span id="passwordError" class="help-block">密码不为空</span>
								</div>

							</div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">重复密码</label>
                                <div class="col-sm-8">
                                    <input type="password" class="form-control" name=""
                                           id="repassword_add_input" placeholder="重复密码">
                                    <span id="repasswordError" class="help-block">重复密码不为空</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">邮箱</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="email"
                                           id="email_add_input" placeholder="邮箱">
                                    <span id="emailError" class="help-block">邮箱不为空</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="userType_add_select">用户类型</label>
                                <div class="col-sm-8">
                                    <select id="userType_add_select" name="userType" class="form-control selectpicker" title="请选择用户类型" data-width="300px">
                                    </select>
									<span id="userTypeError" class="help-block">请选择用户类型！</span>
								</div>
                            </div>
	                    </form>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" id="userUnit_save_btn">保存</button>
					</div>
	            </div>
	        </div>
	    </div>
	

		
        <div class="container">
			<div class="page-header">
			  <h1>用户管理</h1>
			</div>

			<form class="form-inline page-header">
				<div class="form-group">
					<label for="userType_search_select">用户类型：</label>
					<select id="userType_search_select" name="" class="form-control selectpicker" title="请选择用户类型" data-width="300px">

					</select>
					<span class="help-block"></span>
				</div>

				<div class="form-group pull-right">
					<div class="input-group">
						<input type="text" id="userName_search_input" class="form-control" placeholder="请输入用户名">
						<div class="input-group-btn btn-group">
							<button class="btn btn-primary" id="search_btn" type="button"><i class="glyphicon glyphicon-search"></i> 搜索</button>
							<button class="btn btn-warning" id="reset_btn" type="button"><i class="glyphicon glyphicon-refresh"></i> 重置</button>
						</div>
					</div><!-- /input-group -->
				</div><!-- /.col-lg-6 -->
			</form>

			<ul class="nav nav-list"><li class="divider"></li></ul>

			<table class="table table table-bordered" id="user-table">
				<thead>
		              <td><input type="checkbox"  id="check_all" /></td>
		              <td style="vertical-align: middle!important;text-align: center;">用户名</td>
		              <td style="vertical-align: middle!important;text-align: center;">邮箱</td>
		              <td style="vertical-align: middle!important;text-align: center;">注册时间</td>
					  <td style="vertical-align: middle!important;text-align: center;">用户类型</td>
					  <td style="vertical-align: middle!important;text-align: center;">操作</td>
				</thead>

				<tbody>

				</tbody>
				<tfoot>

				</tfoot>
			</table>

		</div>
		  
		
		
        </div>

		<footer class="footer text-center">
			<div class="container">
				<p class="text-muted">Digital Mall Management System @2021</p>
			</div>
		</footer>

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="behind/commons/js/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="behind/commons/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src="behind/commons/bootstrap-select-dist/js/bootstrap-select.min.js"></script>
<script src="behind/commons/js/jquery.cookie.js"></script>

<script>
    var pn,userName,assignId,userTypes;

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
					console.log(result.code);
					$("#loginUser_nav").append(result.extend.loginUser.userName);
					if (result.extend.loginUser.userType==1){
						$("#userManager").append("  <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">用户管理 <span class=\"caret\"></span></a>\n" +
								"                              <ul class=\"dropdown-menu\">\n" +
								"                                  <li ><a href=\"userTypeManager\">用户类型管理</a></li>\n" +
								"                                  <li class='active'><a href=\"userManager\">用户管理</a></li>\n" +
								"                              </ul>");
						$("#productsManager").append("<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">商品管理 <span class=\"caret\"></span></a>\n" +
								"                              <ul class=\"dropdown-menu\">\n" +
								"                                  <li><a href=\"goodsTypeManager\">商品类型管理</a></li>\n" +
								"                                  <li><a href=\"goodsManager\">商品管理</a></li>\n" +
								"                              </ul>");
					}else {
						$("#userManager").append("<a href=\"userManager\">用户管理</a>");
						$("#productsManager").append("<a href=\"goodsManager\">商品管理</a>");
					}
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
	$.fn.loadUserTypeList=function(){
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

					$("<option></option>").append("全部用户类型").attr({"value": 0}).appendTo($("#userType_search_select"));
					$("#userType_search_select").removeAttr("disabled");
					$("#userType_search_select").selectpicker("refresh");

					if(result.extend.loginUser.userType==0){
						$("<option></option>").append("管理员").attr({"value": 1}).appendTo($("#userType_search_select"));
						$("#userType_search_select").removeAttr("disabled");
						$("#userType_search_select").selectpicker("refresh");

						$("<option></option>").append("管理员").attr({"value": 1}).appendTo($("#userType_add_select"));
						$("#userType_add_select").removeAttr("disabled");
						$("#userType_add_select").selectpicker("refresh");

						$("<option></option>").append("管理员").attr({"value": 1}).appendTo($("#userType_modify_select"));
						$("#userType_modify_select").removeAttr("disabled");
						$("#userType_modify_select").selectpicker("refresh");
					}

				}
			}


		});
		$.ajax({
			url: "userTypeList",
			type: "get",
			dataType: "json",
			// headers:{
			//     Accept:"application/json;charset=utf-8",
			//     token:""+$.cookie("token")
			// },
			success: function (result) {
				console.log(result);
				var userTypeList = result.extend.userTypeList;
				$.each(userTypeList,function(index,userType) {
					if (index>=1){
						$("<option></option>").append(userType.userTypeName).attr({"value": userType.userTypeId}).appendTo($("#userType_search_select"));
						$("#userType_search_select").removeAttr("disabled");
						$("#userType_search_select").selectpicker("refresh");

						$("<option></option>").append(userType.userTypeName).attr({"value": userType.userTypeId}).appendTo($("#userType_add_select"));
						$("#userType_add_select").removeAttr("disabled");
						$("#userType_add_select").selectpicker("refresh");

						$("<option></option>").append(userType.userTypeName).attr({"value":  userType.userTypeId}).appendTo($("#userType_modify_select"));
						$("#userType_modify_select").removeAttr("disabled");
						$("#userType_modify_select").selectpicker("refresh");
					}

				})
			}
		});
	};
	$(function () {
		$.fn.loadLoginUser();
		$.fn.loadUserTypeList();
	});

	$("#logout_nav").click(function () {
		$.fn.logout();
	});

	var currPage  = 1;
	$(function () {
		to_page(currPage);
	});



	function to_page(pn) {
		$.ajax({
			url: "userList",
			type: "GET",
			data: {"userTypes":userTypes,"userName": userName, "pn": pn},
			dataType: "json",
			// headers:{
			// 	Accept:"application/json;charset=utf-8",
			// 	token:""+$.cookie("token")
			// },
			beforeSend: function () {
				//请求发送之前的处理
				$("#user-table tbody").empty();
				$("#user-table tfoot").empty();
				$("#user-table tbody").append("<tr><td colspan='6'>正在加载用户信息，请稍后。。。</td></tr>");
			},
			success: function (result) {
				//请求成功的处理
				if (result.code === 100) {
					//操作成功
					//1.显示用户信息
					build_areaAdmins_table(result);
					//2显示分页信息
					build_page_nav(result);

				} else {
					//操作失败
					$("#user-table tbody").empty();
					$("#user-table tfoot").empty();
					$("#user-table tbody").append("<tr><td colspan='6'>操作失败，请稍后再试</td></tr>")
				}
			},
			error: function () {
				//请求过程出错的处理`
				$("#user-table tbody").empty();
				$("#user-table tfoot").empty();
				$("#user-table tbody").append("<tr><td colspan='6'>请求出错，请稍后再试！</td></tr>")
			}

		});
	}
	function build_areaAdmins_table(result) {
		$("#user-table tbody").empty();
		var users = result.extend.pageInfo.list;

		$.each(users,function (index,user) {
			var chkTd=$("<td></td>").append($("<input>")
					.attr({"type":"checkbox","style":"vertical-align: middle!important;text-align: center"}).addClass("check_item"));
			var userIdTd = chkTd.append($("<input>").attr("type","hidden").append(user.userId));
			var userNameTd = $("<td></td>").attr("style","vertical-align: middle!important")
					.append(user.userName);
			var emailTd = $("<td></td>").attr("style","vertical-align: middle!important").append(user.email);
			var userOperatorTimeTd=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append(user.userOperatorTime);
			var userTypeTd;
			if (user.userType==1){
				 userTypeTd = $("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append("管理员");
			}else if (user.userType==2){
				 userTypeTd = $("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append("商家");
			}else if (user.userType==3){
				 userTypeTd = $("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append("用户");

			}

			var editBtn=$("<button></button>").addClass("btn btn-primary edit_btn_up").attr({"type":"button","data-toggle":"modal","data-target":"#userUnit_modify_modal"})
					.append($("<span></span>").addClass("glyphicon glyphicon-edit"))
					.append("修改");
			var resetBtn=$("<button></button>").addClass("btn btn-warning passwordReset_btn")
					.attr("type","button")
					.append($("<span></span>").addClass("glyphicon glyphicon-lock"))
					.append("重置密码");
			var deleteBtn=$("<button></button>").addClass("btn btn-danger delete-btn").attr("type","button")
					.append($("<span></span>").addClass("glyphicon glyphicon-remove")).append("删除");
			var btnGp=$("<div></div>").addClass("btn-group").attr({"role":"group","aria-label":"..."}).append(editBtn).append(resetBtn).append(deleteBtn);
			deleteBtn.attr("delete-id",user.userId);
			editBtn.attr("edit-id",user.userId);
			resetBtn.attr("reset-id",user.userId);
			// distributionBtn.attr("assign-id",user.userId);
			var btnDivTd=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append(btnGp);

			$("<tr></tr>").append(chkTd)
					.append(userIdTd)
					.append(userNameTd)
					.append(emailTd)
					.append(userOperatorTimeTd)
					.append(userTypeTd)
					.append(btnDivTd)
					.appendTo("#user-table tbody");
		});
	}

	function build_page_nav(result) {
		$("#user-table tfoot").empty();
		var pageInfo = result.extend.pageInfo;
		currPage=pageInfo.pageNum;
		var pageInfoTd= $("<div></div>").addClass("col-lg-3").attr("style","margin: 10px 0 -20px 0 ;")
				.append("当前第" + pageInfo.pageNum
						+" 页,总共 "+ pageInfo.pages
						+"页,总 "+ pageInfo.total+" 条记录");

		var pageUl = $("<ul></ul>").addClass("pagination");

		var firstPageLi = $("<li></li>").append($("<a></a>").append("首页"));
		if(pageInfo.isFirstPage){
			firstPageLi.addClass("disabled");
		}else {
			firstPageLi.click(function () {
				to_page(1);
			});
		}
		pageUl.append(firstPageLi);

		var previousPageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
		if(pageInfo.hasPreviousPage){
			previousPageLi.click(function () {
				to_page(pageInfo.pageNum-1);
			});
		}else {
			previousPageLi.addClass("disabled");
		}
		pageUl.append(previousPageLi);

		$.each(pageInfo.navigatepageNums,function (index,num) {
			var pageLi = $("<li></li>").append($("<a></a>").append(num));
			if(num==pageInfo.pageNum){
				pageLi.addClass("active");
			}else {
				pageLi.click(function () {
					to_page(num);
				});
			}
			pageUl.append(pageLi);
		});

		var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
		if(pageInfo.hasNextPage){
			nextPageLi.click(function () {
				to_page(pageInfo.pageNum+1);
			});
		}else {
			nextPageLi.addClass("disabled");
		}
		pageUl.append(nextPageLi);

		var lastPageLi = $("<li></li>").append($("<a></a>").append("末页"));
		if(pageInfo.isLastPage){
			lastPageLi.addClass("disabled");
		}else {
			lastPageLi.click(function () {
				to_page(pageInfo.pages);
			});
		}
		pageUl.append(lastPageLi);

		var navigatePageTd=$("<div></div>").addClass("text-center col-lg-6").attr("style","margin: -15px 0 -20px 0 ;").append(pageUl);

		var addBtn=$("<button></button>").addClass("btn btn-default").attr({"type":"button","data-toggle":"modal","data-target":"#userUnint_add_modal","id":"areaAdmin_add_btn"})
				.append($("<span></span>").addClass("glyphicon glyphicon-plus")).attr("style","color: #1B6D85;").append("<a></a>").attr("style","color: #1B6D85;").append("新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;增");

		var deleteBtns=$("<button></button>").addClass("btn btn-default").attr({"type":"button","id":"user_delete_all"})
				.append($("<span></span>").addClass("glyphicon glyphicon-remove")).attr("style","color: #1B6D85;").append("批量删除");
		var btnGp=$("<div></div>").addClass("col-lg-3").attr("style","margin: 5px 0 -20px 0 ;").append(addBtn).append(deleteBtns);

		$("<td></td>").attr("colspan","6").append(btnGp).append(navigatePageTd).append(pageInfoTd).appendTo("#user-table tfoot");

	}
	$("#check_all").click(function () {
		//attr获取或设置自定义的属性值，prop获取或这是原生dom
		$(".check_item").prop("checked",$(this).prop("checked"));
	});

	$(document).on("click",".check_item",function () {
		$("#check_all").prop("checked",$(".check_item").length == $(".check_item:checked").length);
	});



    $("#reset_btn").click(function () {
        $("#userType_search_select").empty();
        $("#userType_search_select").attr("disabled","disabled");
        $("#userType_search_select").selectpicker("refresh");
        $(" #userName_search_input").val("");
		$.fn.loadUserTypeList();
		if($("#userType_search_select").val() ==""){
			userTypes = 0;
		}else{
			userTypes =$("#userType_search_select").val();
		}
		userName=$("#userName_search_input").val();
		console.log(userTypes);
		to_page(pn);
	});

    $("#search_btn").click(function (){
        if($("#userType_search_select").val() ==""){
            userTypes = 0;
         }else{
            userTypes =$("#userType_search_select").val();
        }
		userName=$("#userName_search_input").val();
        console.log(userTypes);
        to_page(pn);
    });

	$(document).on("click",".delete-btn",function () {
		var userName = $(this).parents("tr").find("td:eq(1)").text();
		if (confirm("确认删除【"+userName+"】吗？")){
			$.ajax({
				url:"userDelete/" + $(this).attr("delete-id"),
				type:"DELETE",
				dataType:"json",
				success:function (result) {
					alert(result.msg);
					if (result.code==100){
						//删除成功
						//局部刷新
						to_page(currPage);
					}
				}
			});
		}
		//发送异步请求
	});

	$(document).on("click","#user_delete_all",function () {
		if ($(".check_item:checked").length==0){
			alert("请选择要删除的用户");
			return;
		}
		var userNames ="",userIds="";
		$.each($(".check_item:checked"),function () {
			userNames = userNames +$(this).parents("tr").find("td:eq(1)").text()+",";
			userIds = userIds +$(this).parents("tr").find("td:eq(0)").text()+"-";
		});
		userNames=userNames.substring(0,userNames.length-1);
		userIds=userIds.substring(0,userIds.length-1);
		if (confirm("确认删除【"+userNames+"】吗？")){
			//发送异步请求，批量删除员工
			$.ajax({
				url:"userDelete/"+userIds,
				type:"DELETE",
				dataType:"json",
				success:function (result) {
					alert(result.msg);
					if (result.code==100){
						//删除成功
						//局部刷新
						to_page(currPage);
						$("#check_all").prop("checked",false);
					}
				}
			});
		}
	});
	//
	$(document ).on( "click", ".passwordReset_btn",function () {
			$.ajax({
				url: "passwordReset",
				data: {"id": $(this).attr("reset-id")},
				type: "POST",
				dataType: "json" ,
				success: function (result) {
					if (result.code === 100) {
						alert("密码重置成功!");
					}
				}}
			);
	});
	//
	$( "#userUnit_save_btn").click(function (){
		//数据校验
		//用户名校验
		if($("#userName_add_input").val()==""){
			$("#userNameError").show();
			$('#userName_add_input').focus();
			return ;
		}else {
			$("#userNameError").hide();
		}

		//密码校验
		if($("#password_add_input").val()==""){
			$("#passwordError").show();
			$('#password_add_input').focus();
			return ;
		}else if(!/^[a-zA-Z]\w{5,17}$/.test($("#password_add_input").val())){
			$("#passwordError").empty();
			$("#passwordError").append("<span>密码格式不合法！<br>以字母开头，长度在6~18之间，只能包含字母、数字和下划线</span>");
			$("#passwordError").show();
			$('#password_add_input').focus();
			return ;
		}else {
			$("#passwordError").hide();

		}
		//重复密码校验
		if($("#repassword_add_input").val()==""){
			$("#repasswordError").show();
			$('#repassword_add_input').focus();
			return ;
		}else if($("#repassword_add_input").val()!=$("#password_add_input").val()){
			$("#repasswordError").empty();
			$("#repasswordError").append("<span>重复密码不正确</span>");
			$("#repasswordError").show();
			$('#repassword_add_input').focus();
			return ;
		}else {
			$("#repasswordError").hide();

		}
		//邮箱校验
		if($('#email_add_input').val()=='') {
			$("#emailError").show();
			$('#email_add_input').focus();
			return ;
		}else if(!/^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/.test($("#email_add_input").val())){
			$("#emailError").empty();
			$("#emailError").append("<span>邮箱格式不正确</span>");
			$("#emailError").show();
			$('#email_add_input').focus();
			return ;
		}else {
			$("#emailError").hide();
		}
		if($("#userType_search_select").val() ==" "){
			$("#userTypeError").show();
			$('#userType_search_select').focus();
			return ;
		}else {
			$("#userTypeError").hide();

		}

		//新增院枚管理员的异步请求
		$.ajax({
			url: "userSave",
			data: $("#userUnit_add_frm").serialize(),
			type: "POST",
			dataType: "json",
			// headers:{
			// 	Accept:"application/json;charset=utf-8",
			// 	token:""+$.cookie("token")
			// },
			success: function (result){
				if(result.code === 100) {
					//添加成功，刷新所有地域信息
					$("#userName_add_input").val("");
					$("#password_add_input").val("");
					$("#repassword_add_input").val("");
					$('#email_add_input').val("");
					$("#userType_search_select").empty();
					$( "#userUnint_add_modal").modal("hide");
					$("#userUnint_add_modal").attr("disabled","disabled");
					$("#userUnint_add_modal").selectpicker("refresh");
					alert("用户信息添加成功!");

					to_page(currPage);
					$( "#check_all").prop("checked" , false);
				}
			}});
	});

	$(document).on("click",".edit_btn_up",function () {
		$.ajax({
			url: "userModifyGetInfo",
			data: {"id": $(this).attr("edit-id")},
			type: "GET",
			dataType: "json",
			// headers:{
			// 	Accept:"application/json;charset=utf-8",
			// 	token:""+$.cookie("token")
			// },
			success: function (result) {
				if (result.code === 100) {
					console.log(result);
					$("#userName_modify_input").val(result.extend.userInfo.userName);
					$("#email_modify_input").val(result.extend.userInfo.email);

					var selText;
					if (result.extend.userInfo.userType==1){
						selText="管理员";
					}
					if(result.extend.userInfo.userType==2){
						selText="商家";
					}
					if(result.extend.userInfo.userType==3){
						selText="用户";
					}
					$("#userType_modify_select").removeAttr("disabled");
					$("#userType_modify_select").selectpicker("refresh");
					if (selText != "") {
						$("#userType_modify_select").next().prop("title", selText);
						$("#userType_modify_select").next().find("div.filter-option-inner-inner").html(selText);
						$("#userType_modify_select").next().removeClass("bs-placeholder");
					}

				}
			}
		});
        $("#userUnit_modify_btn").attr("edit-id",$(this).attr("edit-id"));
        $("#userUnit_modify_modal").modal({
            "backdrop": "static"
        });
	});


    $( "#userUnit_modify_btn").click(function (){
        //数据校验
        //新增院枚管理员的异步请求
        $.ajax({
            url: "userModify/"+$(this).attr("edit-id"),
            data: $("#userUnit_modify_frm").serialize(),
            type: "PUT",
            dataType: "json",
			// headers:{
			// 	Accept:"application/json;charset=utf-8",
			// 	token:""+$.cookie("token")
			// },
            success: function (result){
                if(result.code === 100) {
                    //添加成功，刷新所有地域信息
                    $( "#userUnit_modify_modal").modal("hide");
                    alert("用户信息修改成功!");

                    to_page(currPage);
                    $( "#check_all").prop("checked" , false);
                    //自主完成

                }
            }});
    });



</script>
  </body>
</html>