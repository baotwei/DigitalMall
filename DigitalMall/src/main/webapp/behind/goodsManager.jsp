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
    <!-- Custom styles for this template -->
    <link href="behind/commons/css/style.css" rel="stylesheet">
<style>


</style>
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
				  <li id="userManager">

				  </li>
				  <li class="active" id="productsManager">

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
	<%--修改员工模态框页面--%>
    <div class="modal fade" tabindex="-1"
         role="dialog" aria-labelledby="myLargeModalLabel"  id="areaAdmin_modify_modal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
    	
                    <div class="page-header">
                        <h1>&nbsp;&nbsp;&nbsp;修改商品信息</h1>
                    </div>
				<form class="form-horizontal" role="form" id="good_modify_frm" enctype="multipart/form-data">
					<div class="form-group">
						<label class="col-sm-2 control-label">商品名</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" name="goodName"
								   placeholder="请输入商品名" id="goodName_modify_input">
							<span class="help-block"></span>
						</div>

					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">商品图片</label>
						<div class="col-sm-4">
							<%--									<input type="file" name="unitFile"--%>
							<%--										   id="image_add_input" value="">--%>
							<input id="fileuploadUpdate" type="file" name="fileupload" accept=".png,.jpg,.jpeg" multiple=""  style="display:none;" onchange="picUpdate(this)" />
							<input type="text" class="form-control" name="goodImage" id="goodImage_modify_input" autocomplete="off" readonly="readonly" />
							<span class="help-block"></span>
						</div>
						<div class="col-sm-1"><input id="excelImportUpdate" type="button" value="浏览" class="btn btn-primary" />

						</div>
						<div class="col-sm-1"><input id="goodImageAddUpdate" type="button" value="上传" class="btn btn-primary" />
						</div>
						<div class="col-sm-5" id="imageShow">

						</div>

					</div>

					<div class="form-group">
						<label for="provinceSelect_modify_modal" class="col-sm-2 control-label">商品分类</label>
						<div class="col-sm-3">
							<select class="form-control selectpicker" name="" id="provinceSelect_modify_modal" title="请选择大类">
							</select>
							<span class="help-block"></span>
						</div>
						<%--									<label for="citySelect_add_modal" class="col-sm-2 control-label">小类</label>--%>
						<div class="col-sm-3">
							<select  id="citySelect_modify_modal" class="form-control selectpicker" name="" title="请选择小类">

							</select>
							<span class="help-block"></span>
						</div>

						<%--									<label for="schoolSelect_add_modal" class="col-sm-2 control-label">品牌</label>--%>
						<div class="col-sm-3">
							<select id="schoolSelect_modify_modal" class="form-control selectpicker" name="goodType" title="请选择品牌">

							</select>
							<span class="help-block"></span>
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">商品价格</label>
						<div class="col-sm-3">
							<div class="input-group"><input type="text" class="form-control" name="goodPrice"
															placeholder="请输入商品价格" id="goodsPrice_modify_input">
								<span class="input-group-addon">元</span></div>
							<span class="help-block"></span>
						</div>
						<label class="col-sm-2 control-label">商品库存</label>
						<div class="col-sm-3">
							<div class="input-group">
								<input type="text" class="form-control" name="stock"
									   placeholder="请输入商品库存" id="goodsStock_modify_input">
								<span class="input-group-addon">件</span>
								<span class="help-block"></span>
							</div></div>
					</div>


					<div class="form-group">
						<label class="col-sm-2 control-label">商品介绍</label>
						<div class="col-sm-8">
									<textarea class="form-control" placeholder="请输入商品介绍"
											  name="description" id="goodDescription_modify_input" rows="8" cols="20" style="resize:none;" >
									</textarea>
							<span class="help-block"></span>
						</div>
					</div>

				</form>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
    				 <button type="button" class="btn btn-primary" id="good_modify_btn">保存</button>
                </div>
            </div>
        </div>
    </div>
	<%--新增商品模态框页面--%>
	    <div class="modal fade bs-example-modal-lg" tabindex="-1"
	         role="dialog" aria-labelledby="myLargeModalLabel" id="areaAdmin_add_modal">
	        <div class="modal-dialog modal-lg" role="document">
	            <div class="modal-content">
						<div class="page-header">
							<h1>&nbsp;&nbsp;&nbsp;商品上架</h1>
						</div>
	                    <form class="form-horizontal" role="form" id="good_add_frm" enctype="multipart/form-data">
	                        <div class="form-group">
	                            <label class="col-sm-2 control-label">商品名</label>
	                            <div class="col-sm-8">
	                                <input type="text" class="form-control" name="goodName"
										   placeholder="请输入商品名" id="userName_add_input">
	                                <span class="help-block"></span>
	                            </div>
	
	                        </div>

							<div class="form-group">
								<label class="col-sm-2 control-label">商品图片</label>
								<div class="col-sm-4">
<%--									<input type="file" name="unitFile"--%>
<%--										   id="image_add_input" value="">--%>
									<input id="fileupload" type="file" name="fileupload" accept=".png,.jpg,.jpeg" multiple=""  style="display:none;" onchange="changePic(this)" />
									<input type="text" class="form-control" name="goodImageName" id="goodImageName" autocomplete="off" readonly="readonly" />
									<span class="help-block"></span>
								</div>
								<div class="col-sm-1"><input id="excelImport" type="button" value="浏览" class="btn btn-primary" />

								</div>
								<div class="col-sm-1"><input id="goodImageAdd" type="button" value="上传" class="btn btn-primary" />
								</div>
								<div class="col-sm-5">
									<img src="" id="show" width="200">
								</div>

							</div>

								<div class="form-group">
									<label for="provinceSelect_add_modal" class="col-sm-2 control-label">商品分类</label>
									<div class="col-sm-3">
										<select class="form-control selectpicker" name="goodType.goodTypeName" id="provinceSelect_add_modal" title="请选择大类">
										</select>
										<span class="help-block"></span>
									</div>
									<div class="col-sm-3">
										<select  id="citySelect_add_modal" class="form-control selectpicker" name="" title="请选择小类">

										</select>
										<span class="help-block"></span>
									</div>

									<div class="col-sm-3">
										<select id="schoolSelect_add_modal" class="form-control selectpicker" name="goodType" title="请选择品牌">

										</select>
										<span class="help-block"></span>
									</div>
								</div>

							<div class="form-group">
								<label class="col-sm-2 control-label">商品价格</label>
								<div class="col-sm-3">
									<div class="input-group"><input type="text" class="form-control" name="goodPrice"
																	placeholder="请输入商品价格" id="goodsPrice_add_input">
										<span class="input-group-addon">元</span></div>
									<span class="help-block"></span>
								</div>
								<label class="col-sm-2 control-label">商品库存</label>
								<div class="col-sm-3">
									<div class="input-group">
										<input type="text" class="form-control" name="stock"
											   placeholder="请输入商品库存" id="goodsStock_add_input">
										<span class="input-group-addon">件</span>
										<span class="help-block"></span>
									</div></div>
							</div>


							<div class="form-group">
								<label class="col-sm-2 control-label">商品介绍</label>
								<div class="col-sm-8">
									<textarea class="form-control" placeholder="请输入商品介绍"
											  name="description" id="goodDescription_add_input" rows="8" cols="20" style="resize:none;" ></textarea>
									<span class="help-block"></span>
								</div>
							</div>

	                    </form>
	                <div class="modal-footer">
	                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						 <button type="button" class="btn btn-primary" id="goods_save_btn">保存</button>
	                </div>
	            </div>
	        </div>
	    </div>
	
        <!-- Begin page content -->

		<div class="container">
			<div class="page-header">
				<h3>商品管理</h3>
			</div>

			<form class="form-inline page-header">
				<div class="form-group form-s2">
					<label for="provinceSelect">大类：</label>
					<select id="provinceSelect" name="goodsType.goodsTypeName" class="form-control selectpicker" title="请选择大类" data-width="170px">

					</select>
					<span class="help-block"></span>
				</div>

				<div class="form-group form-select form-s2">
					<label for="citySelect">&nbsp;&nbsp;&nbsp;小类：</label>
					<select id="citySelect" name="" class="form-control selectpicker" title="请选择小类" data-width="170px">

					</select>
					<span class="help-block"></span>
				</div>

				<div class="form-group form-select form-s2">
					<label for="schoolSelect">&nbsp;&nbsp;&nbsp;品牌：</label>
					<select id="schoolSelect" name="" class="form-control selectpicker" title="请选择品牌" data-width="170px">

					</select>
					<span class="help-block"></span>
				</div>

				<div class="form-group pull-right">
					<div class="input-group">
						<input type="text" id="userName_search_input" class="form-control" placeholder="请输入商品名">
						<div class="input-group-btn btn-group">
							<button class="btn btn-primary" id="search_btn" type="button"><i class="glyphicon glyphicon-search"></i> 搜索</button>
							<button class="btn btn-warning" id="reset_btn" type="button"><i class="glyphicon glyphicon-refresh"></i> 重置</button>
						</div>
					</div><!-- /input-group -->
				</div><!-- /.col-lg-6 -->
			</form>

		  	<ul class="nav nav-list"><li class="divider"></li></ul>
		 
		      <table class="table table-bordered table-striped" id="goods-table">
		          <thead>
		              <td><input type="checkbox" id="check_all"/></td>
		              <td>商品名</td>
		              <td>商品图片</td>
		              <td>商品类型</td>
		              <td>商品价格</td>
					  <td>商品库存</td>
					  <td>商品介绍</td>
					  <td>操作</td>
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
	  var typeOneId, typeTwoId, brandId, goodName, pn;

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
								  "                                  <li><a href=\"userTypeManager\">用户类型管理</a></li>\n" +
								  "                                  <li><a href=\"userManager\">用户管理</a></li>\n" +
								  "                              </ul>");
						  $("#productsManager").append("<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">商品管理 <span class=\"caret\"></span></a>\n" +
								  "                              <ul class=\"dropdown-menu\">\n" +
								  "                                  <li><a href=\"goodsTypeManager\">商品类型管理</a></li>\n" +
								  "                                  <li class='active'><a href=\"goodsManager\">商品管理</a></li>\n" +
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



	function to_page(pn) {
		$.ajax({
			url: "goodsList",
			type: "GET",
			data: {"typeOneId": typeOneId, "typeTwoId": typeTwoId, "brandId": brandId, "goodName": goodName, "pn": pn},
			dataType: "json",
			beforeSend: function () {
				//请求发送之前的处理
				$("#user-table tbody").empty();
				$("#user-table tfoot").empty();
				$("#user-table tbody").append("<tr><td colspan='6'>正在加载商品信息，请稍后。。。</td></tr>")
			}, success: function (result) {
				//请求成功的处理
				if (result.code == 100) {
					//操作成功
					//1.显示院校管理员信息
					build_goods_table(result);
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
		function build_goods_table(result) {
			$("#goods-table tbody").empty();
			var goods = result.extend.pageInfo.list;
			console.log(goods);
			$.each(goods,function (index,good) {
				var chkTd=$("<td></td>").append($("<input>").attr({"type":"checkbox","style":"vertical-align: middle!important"}).addClass("check_item"));
				var goodIdTd = chkTd.append($("<input>").attr("type","hidden").append(good.goodId));
				var goodNameTd = $("<td></td>").attr("style","vertical-align: middle!important").append(good.goodName);
				var imageName="./upload/"+good.goodImage;
				var goodImageTd= $("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append("<img src="+imageName+" id=\"show\" width=\"200\">");
				var goodTypeTd=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center")
						.append(good.goodsType.goodsTypeName+"<br>"
						+good.goodsType.nodes[0].goodsTypeName+"<br>"
						+good.goodsType.nodes[0].nodes[0].goodsTypeName
						)
				;
				var goodPriceTd=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append(good.goodPrice);
				var stockTd=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append(good.stock);
				var descriptionTd=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center").addClass("col-lg-3").append(good.description);


				var editBtn=$("<button></button>").addClass("btn btn-primary edit_btn_up").attr({"type":"button","data-toggle":"modal","data-target":"#areaAdmin_modify_modal"})
						.append($("<span></span>").addClass("glyphicon glyphicon-edit")).append("修改");
				// var resetBtn=$("<button></button>").addClass("btn btn-default passwordReset_btn").attr("type","button")
				// 		.append($("<span></span>").addClass("glyphicon glyphicon-lock")).append("重置密码");
				var deleteBtn=$("<button></button>").addClass("btn btn-danger delete-btn").attr("type","button")
						.append($("<span></span>").addClass("glyphicon glyphicon-remove")).append("下架");
				var btnGp=$("<div></div>").addClass("btn-group").attr({"role":"group","aria-label":"..."}).append(editBtn).append(deleteBtn);
				deleteBtn.attr("delete-id",good.goodId);
				editBtn.attr("edit-id",good.goodId);
				// resetBtn.attr("reset-id",good.id);
				var btnDivTd=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append(btnGp);

				$("<tr></tr>").append(chkTd)
						.append(goodIdTd)
						.append(goodNameTd)
						.append(goodImageTd)
						.append(goodTypeTd)
						.append(goodPriceTd)
						.append(stockTd)
						.append(stockTd)
						.append(descriptionTd)
						.append(btnDivTd)
						.appendTo("#goods-table tbody");
			});
		}

		function build_page_nav(result) {
			$("#goods-table tfoot").empty();
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

			var addBtn=$("<button></button>").addClass("btn btn-default").attr({"type":"button","data-toggle":"modal","data-target":"#areaAdmin_add_modal","id":"areaAdmin_add_btn"})
					.append($("<span></span>").addClass("glyphicon glyphicon-plus")).attr("style","color: #1B6D85;").append("<a></a>").attr("style","color: #1B6D85;").append("上&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;架");

			var deleteBtns=$("<button></button>").addClass("btn btn-default").attr({"type":"button","id":"user_delete_all"})
					.append($("<span></span>").addClass("glyphicon glyphicon-remove")).attr("style","color: #1B6D85;").append("批量下架");
			var btnGp=$("<div></div>").addClass("col-lg-3").attr("style","margin: 5px 0 -20px 0 ;").append(addBtn).append(deleteBtns);

			$("<td></td>").attr("colspan","9").append(btnGp).append(navigatePageTd).append(pageInfoTd).appendTo("#goods-table tfoot");

		}

		$("#check_all").click(function () {
			//attr获取或设置自定义的属性值，prop获取或这是原生dom
			$(".check_item").prop("checked",$(this).prop("checked"));
		});

		$(document).on("click",".check_item",function () {
			$("#check_all").prop("checked",$(".check_item").length == $(".check_item:checked").length);
		});
	  //
		$(document).on("click",".delete-btn",function () {
			var goodName = $(this).parents("tr").find("td:eq(1)").text();
			if (confirm("确认下架【"+goodName+"】吗？")){
				$.ajax({
					url:"offShelf/" + $(this).attr("delete-id"),
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
				alert("请选择要下架的商品");
				return;
			}
			var goodNames ="",goodIds="";
			$.each($(".check_item:checked"),function () {
				goodNames = goodNames +$(this).parents("tr").find("td:eq(1)").text()+",";
				goodIds = goodIds +$(this).parents("tr").find("td:eq(0)").text()+"-";
			});
				goodNames=goodNames.substring(0,goodNames.length-1);
				goodIds=goodIds.substring(0,goodIds.length-1);
			if (confirm("确认下架【"+goodNames+"】吗？")){
				//发送异步请求，批量删除员工
				$.ajax({
					url:"offShelf/"+goodIds,
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
		function getList(element, txt,parentId,selText) {
			var url = "list";
			if (parentId != null) {
				url = url + "?parentId=" + parentId;
			}
			// console.log(url);
			// console.log(element)
			$.ajax({
				url: url,
				type: "GET",
				dataType: "json",
				success: function (result) {
					$(element).empty();
					var optionElement;
					if (txt != "") {
						optionElement = $("<option></option>").append(txt).attr({"value": 0});
						optionElement.appendTo($(element));
					}

					$.each(result.extend.goodsTypeList, function (index, type) {
						optionElement = $("<option></option>").append(type.goodsTypeName).attr({"value": type.id});
						optionElement.appendTo($(element));
					});

					$(element).removeAttr("disabled");
					$(element).selectpicker("refresh");
					if (selText != "") {
						$(element).next().prop("title", selText);
						$(element).next().find("div.filter-option-inner-inner").html(selText);
						$(element).next().removeClass("bs-placeholder");
					}
				}
			});
		}

	  getList("#provinceSelect","全部分类","","");
	  $("#provinceSelect").on("changed.bs.select",function () {
		  $("#citySelect").empty();
		  $("#citySelect").attr("disabled","disabled");
		  $("#citySelect"). selectpicker("refresh");
		  $("#schoolSelect").empty();
		  $("#schoolSelect").attr("disabled","disabled");
		  $("#schoolSelect"). selectpicker("refresh");
		  if ($(this).val() > 0) {
			  getList("#citySelect","全部分类",$(this).val(), "");
		  }
	  });
	  $("#citySelect").on("changed.bs.select",function () {
		  $("#schoolSelect").empty();
		  $("#schoolSelect").attr("disabled","disabled");
		  $("#schoolSelect"). selectpicker("refresh");
		  if ($(this).val() > 0) {
			  getList("#schoolSelect","全部品牌",$(this).val(),"");
		  }
	  });

	  $("#search_btn").click(function () {
		  if ($("#provinceSelect").val() == "") {
			  typeOneId = 0;
		  } else {
			  typeOneId = $("#provinceSelect").val();
		  }
		  if ($("#citySelect").val() == "") {
			  typeTwoId = 0;
		  }else {
			  typeTwoId = $("#citySelect").val();
		  }
		  if ($("#schoolSelect").val() == "") {
			  brandId = 0;
		  } else {
			  brandId = $("#schoolSelect").val();
		  }
		  goodName = $("#userName_search_input").val();

		  console.log(goodName);
		  to_page(pn);
	  });

	  $("#reset_btn").click(function () {
		  getList("#provinceSelect", "全部分类"," ","");
		  $("#citySelect").empty();
		  $("#citySelect").attr("disabled","disabled");
		  $("#citySelect").selectpicker("refresh");
		  $("#schoolSelect").empty();
		  $("#schoolSelect").attr("disabled","disabled");
		  $("#schoolSelect"). selectpicker("refresh");
		  $(" #userName_search_input").val("");

		  typeOneId = 0;
		  typeTwoId = 0;
		  brandId = 0;
		  goodName = $("#userName_search_input").val();
		  to_page(pn);
	  });

		$(document).on("click","#areaAdmin_add_btn", function () {
			getList("#provinceSelect_add_modal", "","","");
			$("#areaAdmin_add_modal" ).modal({
				"backdrop": "static"
			});
		});

		$("#provinceSelect_add_modal" ).on("changed.bs.select", function () {
			$("#citySelect_add_modal"). empty( );
			$("#citySelect_add_modal" ).attr("disabled" , "disabled" );
			$("#citySelect_add_modal").selectpicker( "refresh" );
			$("#schoolSelect_add_modal" ).empty();
			$("#schoolSelect_add_modal").attr("disabled" , "disabled" ) ;
			$("#schoolSelect_add_modal" ).selectpicker( "refresh" );
			getList("#citySelect_add_modal","",$(this).val(),"");
		});

		$("#citySelect_add_modal").on("changed.bs.select",function () {
			$("#schoolSelect_add_modal" ).empty ();
			$("#schoolSelect_add_modal").attr("disabled" , "disabled" ) ;
			$("#schoolSelect_add_modal").selectpicker( "refresh" );
			if ($(this).val() > 0) {
				getList("#schoolSelect_add_modal", "", $(this).val(), "");
			}
		});
		$(document).on("hidden.bs.modal",".modal", function () {
			$("#areaAdmin_add_modal form")[0].reset();
			$("#areaAdmin_add_modal form").find(""*"").removeClass("has-error has-success");
			$("#areaAdmin_add_modal form").find( ".help-block" ).text("");
			$(".modal .selectpicker") .empty();
			$(".modal .selectpicker").attr("disabled", "disabled" );
			$(".modal .selectpicker").selectpicker("refresh");
		});
	  //

	  //
		$(document).on("click",".edit_btn_up",function () {
			$.ajax({
				url:"goodModifyGetInfo",
				data:{"id":$(this).attr("edit-id")},
				type:"GET",
				dataType:"json",
				success:function (result) {
					if (result.code===100){
						console.log(result);
						$("#goodName_modify_input").empty();
						$("#goodImage_modify_input").empty();
						$("#imageShow").empty();
						$("#goodsPrice_modify_input").empty();
						$("#goodsStock_modify_input").empty();

						$("#goodDescription_modify_input").empty();
						$("#provinceSelect_modify_modal").empty();
						$("#provinceSelect_modify_modal").attr("disabled","disabled");
						$("#provinceSelect_modify_modal").selectpicker("refresh");
						$("#citySelect_modify_modal").empty();
						$("#citySelect_modify_modal").attr("disabled","disabled");
						$("#citySelect_modify_modal").selectpicker("refresh");
						$("#schoolSelect_modify_modal").empty();
						$("#schoolSelect_modify_modal").attr("disabled","disabled");
						$("#schoolSelect_modify_modal").selectpicker("refresh");

						$("#goodName_modify_input").val(result.extend.goodInfo.goodName);
						$("#goodImage_modify_input").val(result.extend.goodInfo.goodImage);
						var imageUrl="./upload/"+result.extend.goodInfo.goodImage;
						if (result.extend.goodInfo.goodImage!=null){
							$("#imageShow").append("<img src="+imageUrl+" id=\"showEdit\" width=\"200\">");
						}

						$("#goodsPrice_modify_input").val(result.extend.goodInfo.goodPrice);
						$("#goodsStock_modify_input").val(result.extend.goodInfo.stock);
						$("#goodDescription_modify_input").val(result.extend.goodInfo.description);


						getList("#provinceSelect_modify_modal","","",result.extend.goodInfo.goodsType.nodes[0].nodes[0].goodsTypeName);
						getList("#citySelect_modify_modal","",result.extend.goodInfo.goodsType.nodes[0].goodsTypeParentId,
								result.extend.goodInfo.goodsType.nodes[0].goodsTypeName);
						getList("#schoolSelect_modify_modal","",result.extend.goodInfo.goodsType.goodsTypeParentId,
								result.extend.goodInfo.goodsType.goodsTypeName);
					}
				}
			});

			$("#good_modify_btn").attr("edit-id",$(this).attr("edit-id"));
			$("#areaAdmin_modify_modal").modal({
				"backdrop": "static"
			});
		});

		$("#provinceSelect_modify_modal" ).on("changed.bs.select", function () {
			$("#citySelect_modify_modal"). empty( );
			$("#citySelect_modify_modal" ).attr("disabled" , "disabled" );
			$("#citySelect_modify_modal").selectpicker( "refresh" );

			$("#schoolSelect_modify_modal" ).empty();
			$("#schoolSelect_modify_modal").attr("disabled" , "disabled" ) ;
			$("#schoolSelect_modify_modal" ).selectpicker( "refresh" );

			getList("#citySelect_modify_modal","",$(this).val(),"");
		});

		$("#citySelect_modify_modal").on("changed.bs.select",function () {
			$("#schoolSelect_modify_modal" ).empty ();
			$("#schoolSelect_modify_modal").attr("disabled" , "disabled" ) ;
			$("#schoolSelect_modify_modal").selectpicker( "refresh" );
			if ($(this).val() > 0) {
				getList("#schoolSelect_modify_modal", "", $(this).val(), "");
			}
		});




	  function changePic(obj) {
		  function getObjectURL(file) {
			  var url = null ;
			  if (window.createObjectURL!=undefined) { // basic
				  url = window.createObjectURL(file) ;
			  } else if (window.URL!=undefined) { // mozilla(firefox)
				  url = window.URL.createObjectURL(file) ;
			  } else if (window.webkitURL!=undefined) { // webkit or chrome
				  url = window.webkitURL.createObjectURL(file) ;
			  }
			  return url ;
		  }

		  //console.log(obj.files[0]);//这里可以获取上传文件的name
		  var newSrc=getObjectURL(obj.files[0]);
		  document.getElementById('show').src=newSrc;

	  }

	  function picUpdate(obj) {
		  function getObjectURL(file) {
			  var url = null ;
			  if (window.createObjectURL!=undefined) { // basic
				  url = window.createObjectURL(file) ;
			  } else if (window.URL!=undefined) { // mozilla(firefox)
				  url = window.URL.createObjectURL(file) ;
			  } else if (window.webkitURL!=undefined) { // webkit or chrome
				  url = window.webkitURL.createObjectURL(file) ;
			  }
			  return url ;
		  }

		  //console.log(obj.files[0]);//这里可以获取上传文件的name
		  var newSrc=getObjectURL(obj.files[0]);
		  document.getElementById('showEdit').src=newSrc;

	  }

	  $(document).ready(function() {

		  $("#excelImportUpdate").click(function() {
			  $('#fileuploadUpdate').click();
		  });

		  $("#excelImport").click(function() {
			  $('#fileupload').click();
		  });

		  // $("#uploadSubmit").click(function() {
		  //
			//   $('#excelForm').submit();
		  // });
		  $('#fileupload').change(function(){
			  document.getElementById("goodImageName").value =
					  document.getElementById("fileupload").files[0].name;
		  });

		  $('#fileuploadUpdate').change(function(){
			  document.getElementById("goodImage_modify_input").value =
					  document.getElementById("fileuploadUpdate").files[0].name;
		  });
	  });

	  // function changePic(obj) {
		//   function getObjectURL(file) {
		// 	  var url = null ;
		// 	  if (window.createObjectURL!=undefined) { // basic
		// 		  url = window.createObjectURL(file) ;
		// 	  } else if (window.URL!=undefined) { // mozilla(firefox)
		// 		  url = window.URL.createObjectURL(file) ;
		// 	  } else if (window.webkitURL!=undefined) { // webkit or chrome
		// 		  url = window.webkitURL.createObjectURL(file) ;
		// 	  }
		// 	  return url ;
		//   }
	  //
		//   //console.log(obj.files[0]);//这里可以获取上传文件的name
		//   var newSrc=getObjectURL(obj.files[0]);
		//   document.getElementById('show').src=newSrc;
	  //
	  // }
	  //
	  // $(document).ready(function() {
	  //
		//   $("#excelImport1").click(function() {
		// 	  $('#fileupload1').click();
		//   });
	  //
		//   // $("#uploadSubmit").click(function() {
		//   //
		//   //   $('#excelForm').submit();
		//   // });
	  //
	  //
		//   $('#fileupload1').change(function(){
		// 	  document.getElementById("goodImageName1").value =
		// 			  document.getElementById("fileupload1").files[0].name;
		//   })
	  // });


	  $( "#goodImageAdd").click(function (){
	  	//图片上传
		  var fileName=$("#fileupload").val();
		  var formData = new FormData($('#good_add_frm')[0]);//序列化表单，将上传类型设置为文件对象
		  if(fileName==""){
			  alert("请选择文件进行上传");
			  return false;
		  }else{
			  $.ajax({
				  type: 'post',
				  url: "fileImport",
				  data: formData,
				  cache: false,//文件不设置缓存
				  processData: false,//数据不被转换为字符串
				  contentType: false//上传文件时使用，避免 JQuery 对其操作
			  }).success(function (data) {
			  	console.log(data);
			  	console.log(data.extend.newFileName);
			  	$("#goods_save_btn").attr({"newFileName":data.extend.newFileName,"suffixName":data.extend.suffixName});
				  alert("商品图片上传成功!");
			  }).error(function () {
				  alert("商品图片上传失败！");
			  });
		  }
	  });

	  $("#goodImageAddUpdate").click(function (){
			  //图片上传
			  var fileName=$("#fileuploadUpdate").val();
			  var formData = new FormData($('#good_modify_frm')[0]);//序列化表单，将上传类型设置为文件对象
			  if(fileName==""){
				  alert("请选择文件进行上传");
				  return false;
			  }else{
				  $.ajax({
					  type: 'post',
					  url: "fileImport",
					  data: formData,
					  cache: false,//文件不设置缓存
					  processData: false,//数据不被转换为字符串
					  contentType: false//上传文件时使用，避免 JQuery 对其操作
				  }).success(function (data) {
					  console.log(data);
					  console.log(data.extend.newFileName);
					  $("#good_modify_btn").attr({"newFileName":data.extend.newFileName,"suffixName":data.extend.suffixName});
					  alert("商品图片上传成功!");
				  }).error(function () {
					  alert("商品图片上传失败！");
				  });
			  }

	  });

	  $("#goods_save_btn").click(function (){
		  //数据校验
		  //新增院枚管理员的异步请求
          var fileName=$("#fileupload").val();
		  var newFileName=$(this).attr("newFileName");
		  var suffixName=$(this).attr("suffixName");

		  console.log("newFileName:"+newFileName);
		  console.log("suffixName:"+suffixName);

		  if(fileName==""){
              alert("请选择文件进行上传");
              return false;
          }else{
              $.ajax({
                  url: "goodAdd/"+newFileName+"/"+suffixName,
                  data: $("#good_add_frm").serialize(),
                  type: "POST",
                  dataType: "json",
                  // headers:{
                  //   Accept:"application/json;charset=utf-8",
                  //   token:""+$.cookie("token")
                  // },
                  success: function (result){
                      if(result.code === 100) {
                          //添加成功，刷新所有信息
                          $( "#areaAdmin_add_modal").modal("hide");
                          $("#show").src="";
                          alert("商品信息添加成功!");

                          to_page(currPage);
                          $( "#check_all").prop("checked" , false);
                          //自主完成

                      }
                  }});
          }

	  });

	  $( "#good_modify_btn").click(function (){
		  //数据校验
		  //新增院枚管理员的异步请求
		  var fileName=$("#fileuploadUpdate").val();
		  var newFileName=$(this).attr("newFileName");
		  var suffixName=$(this).attr("suffixName");

		  console.log("newFileName:"+newFileName);
		  console.log("suffixName:"+suffixName);

		  	$.ajax({
				  url: "goodModify/"+newFileName+"/"+suffixName+"/"+$(this).attr("edit-id"),
				  data: $("#good_modify_frm").serialize(),
				  type: "PUT",
				  dataType: "json",
				  // headers:{
					//   Accept:"application/json;charset=utf-8",
					//   token:""+$.cookie("token")
				  // },
				  success: function (result){
					  if(result.code === 100) {
						  //添加成功，刷新所有地域信息
						  $( "#areaAdmin_modify_modal").modal("hide");
						  alert("商品信息修改成功!");

						  to_page(currPage);
						  $( "#check_all").prop("checked" , false);
						  //自主完成

					  }
				  }});


	  });




		</script>
  </body>
</html>