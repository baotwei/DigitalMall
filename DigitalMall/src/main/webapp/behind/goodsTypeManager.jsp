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

        <!-- Begin page content -->
		
        <div class="container">
			<div class="page-header">
			  <h1>商品类型管理</h1>
			</div>
		
		  <div class="container">
		    <div class="row">
		      <div class="col-sm-4">
				  <div class="text-center">
				      <button id="add_area_btn" type="button" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span>新&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;增</button>
				      <button id="delete_area_btn" type="button" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> 删&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;除</button>
				  </div>
				  
		        <div id="area_tree" style="margin-top: 20px;"></div>

		      </div>


		      <div class="col-sm-8">
				  <div id="add_area_div">
		        <div class="page-header">
		            <h1>&nbsp;&nbsp;&nbsp;添加商品类型信息</h1>
		        </div>

		        <form class="form-horizontal" role="form" id="add_area_frm">
						<div class="form-group">
							<label class="col-sm-2 control-label">父节点</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="areaParentName_add_input" readonly>
								<input type="hidden" class="form-control" name="goodsTypeParentId" id="areaParentId_add_input" readonly>
								<span class="help-block"></span>
							</div>

						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">名称</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="goodsTypeName" id="" placeholder="">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">类别</label>
							<div class="col-sm-8">
								<select id="areaType_add_select" name="goodsType" class="form-control selectpicker" title="请选择类别">
									<option value="1">大类</option>
									<option value="2">小类</option>
									<option value="3">品牌</option>
								</select>
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">排序号</label>
							<div class="col-sm-8">
								<input type="text" name="sortNum" class="form-control" id="" placeholder="">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<div class="col-sm-8 text-center">
								<button class="btn btn-primary" type="button" id="submit_add_btn"><span class="glyphicon glyphicon-save"></span>保 存</button>
							</div>
						</div>
					<input type="hidden" name="delState" class="form-control" id="" placeholder="">



				</form>
			  </div>

				  <div id="modify_area_div">
				<div class="page-header" >
				    <h1>&nbsp;&nbsp;&nbsp;修改商品类型信息</h1>
				</div>

				<form class="form-horizontal" role="form" id="modify_area_frm">

						<div class="form-group">
							<label class="col-sm-2 control-label">父节点</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="" id="areaParentName_modify_input" readonly>
								<input type="hidden" class="form-control" name="goodsTypeParentId" id="areaParentId_modify_input" >
								<span class="help-block"></span>
							</div>

						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">名称</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" name="goodsTypeName" id="areaName_modify_input" placeholder="">
								<span class="help-block"></span>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">类别</label>
							<div class="col-sm-8">
								<select id="areaType_modify_select" class="form-control selectpicker" name="goodsType" title="请选择类别">
									<option value="1">大类</option>
									<option value="2">小类</option>
									<option value="3">品牌</option>
								</select>
								<span class="help-block"></span>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">排序号</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="areaSortNumber_modify_input" name="sortNum" placeholder="">
								<span class="help-block"></span>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<div class="col-sm-8 text-center">
								<button class="btn btn-primary" type="button" id="submit_modify_btn"><span class="glyphicon glyphicon-save"></span>保 存</button>
							</div>
						</div>
					<input type="hidden" name="delState" class="form-control" id="" placeholder="">

				</form>
			</div>
		    </div>
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
	<script src="behind/commons/bootstrap-treeview-dist/bootstrap-treeview.min.js"></script>
		<script src="behind/commons/js/jquery.cookie.js"></script>

		<script>


	  $("#add_area_div").hide();
	  $("#modify_area_div").hide();

	  function LoadAreaTree() {
		  var treeData=[{
		  	text:"商品类型配置",
			  id:0,
			  goodsType:0,
			  nodes:[]
		  }];
		  $.ajax({
			  url:"tree",
			  dataType:"json",
			  type:"GET",
			  success:function (result) {
			  	console.log(result);
				  treeData[0].nodes=result.extend.goodsTypes;
				  $("#area_tree").treeview({
					  data:treeData,
					  levels:2,
					  onNodeSelected:function (event,node) {
						  $("#add_area_frm")[0].reset();
						  $("#add_area_div").hide();
						  $("#modify_area_frm")[0].reset();
						  $("#modify_area_div").hide();
						  $("#add_area_btn").attr("disabled","disabled");
						  $("#delete_area_btn").attr("disabled","disabled");

						  if (node.goodsType<3){
							  $("#add_area_btn").removeAttr("disabled");
						  }

						  if (node.goodsType>0){
						  	$("#delete_area_btn").removeAttr("disabled");
						  	$("#modify_area_div").show();
						  	var parentNode=$("#area_tree").treeview("getParent",node);
						  	$("#areaParentName_modify_input").val(parentNode.text);
						  	$("#areaParentId_modify_input").val(parentNode.id);
						  	$("#areaName_modify_input").val(node.text);
						  	$("#areaType_modify_select").selectpicker("val",[node.goodsType]);
						  	$("#areaType_modify_input").val(node.goodsType);
						  	$("#areaSortNumber_modify_input").val(node.sortNum);
						  	$("#submit_modify_btn").attr("edit-id",node.id);

						  }

					  }, onNodeUnSelected:function (event,node) {
						  $("#add_area_frm")[0].reset();
						  $("#add_area_div").hide();
						  $("#modify_area_frm")[0].reset();
						  $("#modify_area_div").hide();
						  $("#add_area_btn").attr("disabled", "disabled");
						  $("#delete_area_btn").attr("disabled", "disabled");
					  }
				  });
			  }
		  });

	  }
	  LoadAreaTree();

	  $("#add_area_btn").click(function () {
		  var nodesSelected=$("#area_tree").treeview("getSelected");
		  var count =Object.keys(nodesSelected).length;
		  if (count>0){
			  $("#add_area_frm")[0].reset();
			  $("#add_area_div").hide();
			  $("#modify_area_frm")[0].reset();
			  $("#modify_area_div").hide();

		  	$("#add_area_div").show();
		  	$("#areaParentName_add_input").val(nodesSelected[0].text);
		  	$("#areaParentId_add_input").val(nodesSelected[0].id);
		  	$("#areaType_add_select").selectpicker("val",[nodesSelected[0].goodsType+1]);

		  }
		  else {
		  	alert("请选择需要添加的节点！");
		  }
	  });

	$("#submit_add_btn").click(function () {
		//数据校验
		//添加
		$.ajax({
			url:"goodsTypeAdd",
			data:$("#add_area_frm").serialize(),
			type:"post",
			dataType:"json",
			success:function (result) {
				if (result.code === 100){
					// alert("111");
					//添加成功刷新所有地域信息
					window.location.href="goodsTypeManager";
				}
			}
		});
	});

	$("#submit_modify_btn").click(function () {
		$.ajax({
			url:"updateGoodsType/"+$(this).attr("edit-id"),
			data:$("#modify_area_frm").serialize(),
			type:"PUT",
			dataType:"json",
			success:function (result) {
				if (result.code === 100){
					// alert("111");
					//修改成功，刷新所有地域信息
					window.location.href="goodsTypeManager";
				}
			}
		});
	})	;


	$("#delete_area_btn").click(function () {
		//判断是否有地域选中
		var nodesSelected=$("#area_tree").treeview("getSelected");
		if (nodesSelected.length==0){
			alert("请选择需要删除的院校！");
			return;
		}

		var delete_id=nodesSelected[0].id;

		//提示删除信息
		$.ajax({
			url:"deleteGoodsType/"+delete_id,
			type:"DELETE",
			dataType:"json",
			success:function (result) {
				if (result.code === 100){
					// alert("111");
					//修改成功，刷新所有地域信息
					window.location.href="goodsTypeManager";
				}
			}
		});
	});
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
								  "                                  <li class='active'><a href=\"goodsTypeManager\">商品类型管理</a></li>\n" +
								  "                                  <li><a href=\"goodsManager\">商品管理</a></li>\n" +
								  "                              </ul>");
					  }else {
						  $("#userManager").append("<a href=\"userManager\">用户管理</a>\n");
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

	</script>
  </body>
</html>