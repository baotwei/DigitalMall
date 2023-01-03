<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
	  <meta charset="utf-8">
	  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	  <title>DDMS</title>

	  <!-- Bootstrap -->
	  <link href="behind/commons/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
	  <link href="behind/commons/bootstrap-select-dist/css/bootstrap-select.min.css" rel="stylesheet">
	  <link href="behind/commons/bootstrap-treeview-dist/bootstrap-treeview.min.css" rel="stylesheet">
	  <!-- Custom styles for this template -->
	  <link href="behind/commons/css/style.css" rel="stylesheet">
  </head>
  <body>
        <!-- Fixed navbar -->
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
						<li ><a href="managerIndex">首页</a></li>
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

    <div class="modal fade" tabindex="-1"
         role="dialog" aria-labelledby="myLargeModalLabel"  id="userTypes_modify_modal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">


				<div class="page-header">
					<h1>&nbsp;&nbsp;&nbsp;修改用户类型</h1>
				</div>
				<form class="form-horizontal" role="form" id="userTypes_modify_frm">
					<div class="form-group">
						<label class="col-sm-2 control-label">类型</label>
						<div class="col-sm-8">
							<input type="hidden" class="form-control" name="userTypeId"
													 id="userTypes_modify_userId">

							<input type="text" class="form-control" name="userTypeName"
								   id="userTypes_modify_userTypeName"
								   placeholder="请输入类型">
							<span class="help-block"></span>
						</div>

					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">排序号</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="userTypeSort"
								   id="userTypes_modify_userTypeSortNum"
								   placeholder="排序号">
							<span class="help-block"></span>
						</div>

					</div>

				</form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
    				 <button type="button" class="btn btn-primary" id="userTypes_modify_btn">保存</button>
                </div>
            </div>
        </div>
    </div>

	    <div class="modal fade bs-example-modal-lg" tabindex="-1"
	         role="dialog" aria-labelledby="myLargeModalLabel" id="userType_add_modal">
	        <div class="modal-dialog modal-lg" role="document">
	            <div class="modal-content">
	
	                    <div class="page-header">
	                        <h1>&nbsp;&nbsp;&nbsp;新增用户类型</h1>
	                    </div>
	                    <form class="form-horizontal" role="form" id="userType_add_frm">
	                        <div class="form-group">
	                            <label class="col-sm-2 control-label">类型</label>
	                            <div class="col-sm-8">
	                                <input type="text" class="form-control" name="userTypeName"
	                                        placeholder="请输入类型">
	                                <span class="help-block"></span>
	                            </div>
	
	                        </div>
	                        <div class="form-group">
	                            <label class="col-sm-2 control-label">排序号</label>
	                            <div class="col-sm-8">
	                                <input type="text" class="form-control" name="userTypeSort"
	                                        placeholder="排序号">
	                                <span class="help-block"></span>
	                            </div>
	
	                        </div>

	                    </form>
	                <div class="modal-footer">
	                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						 <button type="button" class="btn btn-primary" id="userType_save_btn">保存</button>
	                </div>
	            </div>
	        </div>
	    </div>
	
        <!-- Begin page content -->
		
        <div class="container">
			<div class="page-header">
			  <h1>用户类型</h1>
			</div>
			<div class="col-lg-2"></div>
			<div class="col-lg-8">
				<table class="table table table-bordered" id="user-table">
				          <thead>
				              
				              <td style="vertical-align: middle!important;text-align: center;">类型编号</td>
				              <td style="vertical-align: middle!important;text-align: center;">类型名称</td>
				              <td style="vertical-align: middle!important;text-align: center;">排序号</td>
				              
				              <td style="vertical-align: middle!important;text-align: center;">操作</td>
				          </thead>
							<tbody>

							</tbody>


				<tfoot>
						<td colspan="6">
							<div class="col-lg-3">
								<button type="button" class="btn btn-default" data-toggle="modal"
										data-target=".bs-example-modal-lg">
									<span class="glyphicon glyphicon-plus" style="color: #1B6D85;" >

									</span><a style="color: #1B6D85;">新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;增</a></button>
								  
							</div>
				
							<div class="col-lg-6"></div>
							  <div class="col-lg-3" style="margin: 10px 0 -20px 0 ;">
							  	<span>总5条记录</span>
							  </div>
							</td>  
						  </tfoot>
				          
				      </table>
				
			</div>

		</div>
		  
		
		
        </div>
    
        <footer class="footer text-center">
          <div class="container">
            <p class="text-muted">Campus Instant Messaging Sysytem @2020 杭州职业技术学院 软件技术专业</p>
          </div>
        </footer>
		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="behind/commons/js/jquery.min.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="behind/commons/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
		<script src="behind/commons/bootstrap-select-dist/js/bootstrap-select.min.js"></script>
		<script src="behind/commons/js/jquery.cookie.js"></script>

  <script>
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
								  "                                  <li class='active'><a href=\"userTypeManager\">用户类型管理</a></li>\n" +
								  "                                  <li><a href=\"userManager\">用户管理</a></li>\n" +
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

	  $(function () {
		  $.fn.loadLoginUser();
	  });

	  $("#logout_nav").click(function () {
		  $.fn.logout();
	  });

	  var currPage  = 1;
	  $(function () {
		  to_page(currPage);
	  });


	  function to_page(){
			$.ajax({
				url: "userTypeList",
				type: "GET",
				dataType: "json",
				// headers:{
				// 	Accept:"application/json;charset=utf-8",
				// 	token:""+$.cookie("token")
				// },
				beforeSend: function () {
					//请求发送之前的处理
					$("#user-table tbody").empty();
					$("#user-table tfoot").empty();
					$("#user-table tbody").append("<tr><td colspan='6'>正在加载类型信息，请稍后。。。</td></tr>")
				}, success: function (result) {
					//请求成功的处理
					if (result.code === 100) {
						//操作成功
						//1.显示单位类型员信息
						console.log(result);
						build_user_table(result);
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
	  $(function () {
		  to_page();
	  });

	  function build_user_table(result) {
		  $("#user-table tbody").empty();
		  var userTypeList = result.extend.userTypeList;
		  $.each(userTypeList,function(index,userType) {
			  var userIdTd = $("<td></td>")
					  .attr("style","vertical-align: middle!important").append(index+1);
			  var userId = userIdTd.append($("<input>").attr("type","hidden").append(userType.userTypeId));
			  var userTypeNameTd = $("<td></td>")
					  .attr("style","vertical-align: middle!important").append(userType.userTypeName);
			  var userTypeSortNumTd= $("<td></td>")
					  .attr("style","vertical-align: middle!important;text-align: center").append(userType.userTypeSort);
			  var editBtn=$("<button></button>").addClass("btn btn-primary edit_btn_up")
					  .attr({"type":"button","data-toggle":"modal","data-target":"#userTypes_modify_modal"}).append($("<span></span>")
							  .addClass("glyphicon glyphicon-edit")).append("修改");
			  var deleteBtn=$("<button></button>").addClass("btn btn-danger delete-btn")
					  .attr("type","button").append($("<span></span>").addClass("glyphicon glyphicon-remove"))
					  .append("删除");
			  var btnGp=$("<div></div>").addClass("btn-group")
					  .attr({"role":"group","aria-label":"..."}).append(editBtn).append(deleteBtn);
			  deleteBtn.attr("delete-id",userType.userTypeId);
			  editBtn.attr("edit-id",userType.userTypeId);
			  var btnDivTd=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append(btnGp);
			  $("<tr></tr>").append(userId)
					  .append(userIdTd)
					  .append(userTypeNameTd)
					  .append(userTypeSortNumTd)
					  .append(btnDivTd)
					  .appendTo("#user-table tbody");
		  });
	  }
	  function build_page_nav(result) {
		  $("#user-table tfoot").empty();
		  var units = result.extend.userTypeList;
		  var addBtn=$("<button></button>").addClass("btn btn-default").
		  attr({"type":"button","data-toggle":"modal","data-target":"#userType_add_modal","id":"userType_add_btn"})
				  .append($("<span></span>").addClass("glyphicon glyphicon-plus")).attr("style","color: #1B6D85;")
				  .append("<a></a>").attr("style","color: #1B6D85;").append("新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;增");
		  var btnDiv=$("<div></div>").addClass("col-lg-3").append(addBtn);
		  var pageInfoTd= $("<div></div>").addClass("col-lg-3").attr("style","margin: 10px 0 -20px 0 ;")
				  .append("总 "+ units.length+" 条记录");

		  var pageInfoDiv=$("<div></div>").addClass("col-lg-6");
		  $("<td></td>").attr("colspan","4").append(btnDiv)
				  .append(pageInfoDiv).append(pageInfoTd).appendTo("#user-table tfoot");
	  }

	  $(document).on("click",".delete-btn",function () {
		  var userTypeName = $(this).parents("tr").find("td:eq(1)").text();
		  if (confirm("确认删除【"+userTypeName+"】吗？")){
			  $.ajax({
				  url:"userType/" + $(this).attr("delete-id"),
				  type:"DELETE",
				  dataType:"json",
				  success:function (result) {
					  alert(result.msg);
					  if (result.code==100){
						  //删除成功
						  //局部刷新
						  to_page();
					  }
				  }
			  });
		  }

	  });
	  //
	  $( "#userType_save_btn").click(function (){
		  //数据校验
		  //新增院枚管理员的异步请求
		  $.ajax({
			  url: "userType",
			  data: $("#userType_add_frm").serialize(),
			  type: "POST",
			  dataType: "json",
			  // headers:{
				//   Accept:"application/json;charset=utf-8",
				//   token:""+$.cookie("token")
			  // },
			  success: function (result){
				  if(result.code === 100) {
					  //添加成功，刷新所有地域信息
					  $( "#userType_add_modal").modal("hide");
					  alert("用户类型信息添加成功!");

					  to_page();
					  // $( "#check_all").prop("checked" , false);
					  //自主完成

				  }
			  }});
	  });

	  $(document).on("click",".edit_btn_up",function () {
		  $.ajax({
			  url: "userTypeInfo",
			  data: {"id": $(this).attr("edit-id")},
			  type: "GET",
			  dataType: "json",
			  success: function (result) {
				  if (result.code === 100) {
					  $("#userTypes_modify_userId").val(result.extend.userType.userTypeId);
					  $("#userTypes_modify_userTypeName").val(result.extend.userType.userTypeName);
					  $("#userTypes_modify_userTypeSortNum").val(result.extend.userType.userTypeSort);

				  }
			  }
		  });
	  });
		  $("#userTypes_modify_btn").click(function () {
			  //数据校验
			  //新增院枚管理员的异步请求
			  $.ajax({
				  url: "userType",
				  data: $("#userTypes_modify_frm").serialize(),
				  type: "PUT",
				  dataType: "json",
				  success: function (result) {
					  if (result.code === 100) {
						  //修改成功，刷新所有地域信息
						  $("#userTypes_modify_modal").modal("hide");
						  alert("用户类型信息修改成功!");

						  to_page();
						  // $( "#check_all").prop("checked" , false);
						  //自主完成

					  }
				  }
			  });
		  });

  </script>
  </body>
</html>