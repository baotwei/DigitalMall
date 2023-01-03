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
                        <li class="active"><a href="managerIndex">首页</a></li>
                          <li id="userManager">
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
    
        <!-- Begin page content -->
		
        <div class="container" style="margin-top: 80px;background-color:#eee ;color: #777;">
			<h1 style="font-size:50px;color: #000000;"><small>数码商城管理系统</small>云管理平台</h1>
		<!-- <h1 class="class="col-sm-6"" >云管理平台</h1> -->
		<div class="col-sm-3">
		  <h3>入驻商家：</h3>
		  <p id="businessCount"></p>
		   <h3>商品件数</h3>
		  <p id="goodsCount"></p>
		  <h3>使用用户：</h3>
		  <p id="userCount"></p>
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
                      console.log(result);
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

      $(function () {
          $.ajax({
              url: "count",
              type: "GET",
              dataType: "json",
              // headers:{
              //     Accept:"application/json;charset=utf-8",
              //     token:""+$.cookie("token")
              // },
              success: function (result) {
                  if (result.code === 100) {
                      $("#businessCount" ).html(result.extend.businessCount+"家");
                      $("#goodsCount").html(result.extend.goodsCount+"件") ;
                      $("#userCount").html(result.extend.userCount+"名");
                  }
              }
          });
      });
  </script>
  </body>
</html>