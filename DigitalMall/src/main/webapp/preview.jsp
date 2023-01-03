<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<head>
<title>商品详细</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="before/css/style.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="before/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="before/js/move-top.js"></script>
<script type="text/javascript" src="before/js/easing.js"></script>
<script src="before/js/easyResponsiveTabs.js" type="text/javascript"></script>
<link href="before/css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="before/css/global.css">
<script src="before/js/slides.min.jquery.js"></script>
<script>
		$(function(){
			$('#products').slides({
				preload: true,
				preloadImage: 'img/loading.gif',
				effect: 'slide, fade',
				crossfade: true,
				slideSpeed: 350,
				fadeSpeed: 500,
				generateNextPrev: true,
				generatePagination: false
			});
		});

	</script>
	<style>
		.categoriesPreview dl dt a{
			display:block;
			font-size:1.0em;
			padding:8px 15px;
			color: #9C9C9C;
			font-family: 'ambleregular';
			margin:10px 10px 10px 20px;
			background:url(before/images/drop_arrow.png) no-repeat 0;
			border-bottom: 1px solid #EEE;
			text-transform:uppercase;
		}
		.categoriesPreview dl dd{
			font-size:0.8em;
			padding:0 20px 0 10px;
			color: #9C9C9C;
			font-family: 'ambleregular';
			text-transform:uppercase;
			margin-left:20px;
		}
		.categoriesPreview dl dd a{
			display:block;
			font-size:0.8em;
			padding:5px;
			margin-left: 5px;
			color: #9C9C9C;
			font-family: 'ambleregular';
			text-transform:uppercase
		}
		.categoriesPreview a:hover{
			color:#B81D22;
		}
		.categoriesPreview dl:last-child{
			padding:0 10px 20px 0px;
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
					<a href="chart" id="cart"><svg t="1620659996167" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1742" width="32" height="32"><path d="M919.3 259.8l-519.2-44.5c-22.5 0-47.6 18.2-40.7 40.7l83.8 312.1c9.5 28.2 31.4 28.5 53.9 28.5h391.7c22.5 0 40.7-18.2 40.7-40.7L960 306c0-22.4-12.5-43.7-40.7-46.2z m-77.9 383.9s69 36.4-3 86.4H349.2L199.2 214l-113-2.5S32 153.3 93 122.4L262.4 136l138.9 507.7h440.1zM449.2 759.3c-39.3 0-71.2 31.9-71.2 71.2 0 39.3 31.9 71.1 71.2 71.1 39.3 0 71.2-31.9 71.2-71.1-0.1-39.4-31.9-71.2-71.2-71.2z m322.1 1.3c-39 0-70.5 31.6-70.5 70.5 0 39 31.6 70.5 70.5 70.5 39 0 70.5-31.6 70.5-70.5 0-39-31.6-70.5-70.5-70.5z" p-id="1743" fill="#d81e06"></path></svg></a>
				</p>
			</div>


	 <div class="clear"></div>
  </div>
	<div class="header_bottom">
	     	<div class="menu">
	     		<ul>
					<li class=""><a id="index" href="index">商城首页</a></li>
					<li><a id="product" href="products">全部产品</a></li>

					<div class="clear"></div>
     			</ul>
	     	</div>
	     	<div class="search_box">
	     		<form>
	     			<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
	     		</form>
	     	</div>
	     	<div class="clear"></div>
	     </div>	     	
   </div>
 <div class="main">
    <div class="content">
    	<div class="content_top">
    		<div >
    		<p id="ledUrl">
			</p>
    	    </div>
    		<div class="clear"></div>
    	</div>
    	<div class="section group">
				<div class="cont-desc span_1_of_2">
				  <div class="product-details">
					<div class="grid images_3_of_2">
						<div id="container">
						   <div id="products_example">
							   <div id="products">
								<div class="slides_container" id="imageBody">

								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="desc span_3_of_2">
					<h2 id="goodInfoName"> </h2>
					<div class="price">
						<p>Price: <span id="goodPrice"></span></p>
					</div>
					<div class="available">
					<ul>
						<li>Quality:<select id="qualitys">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select></li>
					</ul>
					</div>
				<div class="share-desc">
					<div class="share">
						<p>Share Product :</p>
						<ul>
					    	<li><a href="#"><img src="before/images/facebook.png" alt="" /></a></li>
					    	<li><a href="#"><img src="before/images/twitter.png" alt="" /></a></li>
			    		</ul>
					</div>
					<div class="button" id="cartAdd"><span><a href="#">加入购物车</a></span></div>
					<div class="clear"></div>
				</div>
				 <div class="wish-list">
				 	<ul>
				 		<li class="wish"><a href="#">Add to Wishlist</a></li>
				 	    <li class="compare"><a href="#">Add to Compare</a></li>
				 	</ul>
				 </div>
			</div>
			<div class="clear"></div>
		  </div>
		<div class="product_desc">	
			<div id="horizontalTab">
				<ul class="resp-tabs-list">
					<li>商品信息</li>

					<div class="clear"></div>
				</ul>
				<div class="resp-tabs-container">
					<div class="product-desc" id="description">
					<p></p></div>

			</div>
		 </div>
	 </div>
	    <script type="text/javascript">
    $(document).ready(function () {
        $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion           
            width: 'auto', //auto or any width like 600px
            fit: true   // 100% fit in a container
        });
    });
   </script>		
   <div class="content_bottom">
    		<div class="heading">
    		<h3>相关产品</h3>
    		</div>
    		<div class="see">
    			<p><a href="products">更多</a></p>
    		</div>
    		<div class="clear"></div>
    	</div>
   <div class="section group" id="aboutGoodsList">
			</div>
        </div>
				<div class="rightsidebar span_3_of_1 categoriesPreview" id="categories">

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
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>

</body>
<script type="text/javascript">
	var typeOneId, typeTwoId, brandId, goodName, pn,goodType;
	var goodId,quality,userId;

	function DropDown(el) {
		this.dd = el;
		this.initEvents();

	}

	DropDown.prototype = {
		initEvents : function() {
			var obj = this;

			obj.dd.on('click', function(event){
				$(this).toggleClass('active');
				event.stopPropagation();
			});
		}
	};

	$(function() {

		var dd = new DropDown( $('#dd') );

		$(document).click(function() {
			// all dropdowns
			$('.wrapper-dropdown-2').removeClass('active');
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
					console.log(result);
					$("#cartAdd").attr("user-id",result.extend.loginUser.userId);

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
						$("<li><a href=\"#\" id=\"logout_nav\"><i class=\"fa fa-sign-out\" aria-hidden=\"true\"></i> 注销</a></li>\n").appendTo($("#user_ul"));
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
	$(document).on("click","#logout_nav",function () {
		$.fn.logout();
	});

	$(function () {
		$.ajax({
			url: "getGoodInfo",
			type: "GET",
			dataType: "json",
			success: function (result) {
				//请求成功的处理
				if (result.code == 100) {
					//操作成功
					console.log(result);
					var imageName="./upload/"+result.extend.goodInfo.goodImage;
					var imageBody=$("<a href=\"#\" target=\"_blank\"></a>")
							.append("<img src="+imageName+">");
					$("#imageBody").append(imageBody);

					goodType=result.extend.goodInfo.goodsType.nodes[0].nodes[0].goodsType;
					$("#cartAdd").attr({"good-id":result.extend.goodInfo.goodId});


					$("#goodInfoName").append(result.extend.goodInfo.goodName);
					$("#goodPrice").append("$"+result.extend.goodInfo.goodPrice);

					$("#description").append("$"+result.extend.goodInfo.description);

					$("#ledUrl").append("<a href=\"index\">商城首页</a>");
					$("<a href=\"#\"></a>").append(" >> "+result.extend.goodInfo.goodsType.nodes[0].nodes[0].goodsTypeName).appendTo("#ledUrl");
					$("<a href=\"#\"></a>").append(" >> "+result.extend.goodInfo.goodsType.goodsTypeName).appendTo("#ledUrl");
					$("<a href=\"#\"></a>").append(" >> "+result.extend.goodInfo.goodName).appendTo("#ledUrl");


				}
			}
		});
	});

	$(document).on("click",".goodTypes",function () {
		typeOneId=$(this).attr("typeOneId");
		typeTwoId=$(this).attr("typeTwoId");
		brandId=$(this).attr("brandId");

		if($("#searchGoods").val()!="" && $("#searchGoods").val()!="Search"){
			goodName = $("#searchGoods").val();
		}

		// console.log("typeOneId"+typeOneId);
		// console.log("typeTwoId"+typeTwoId);
		// console.log("brandId"+brandId);
		// console.log("goodName"+goodName);
		$.ajax({
			url:"goodGetGoodsInfoType",
			data: {"typeOneId": typeOneId, "typeTwoId": typeTwoId, "brandId": brandId, "goodName": goodName, "pn": pn},
			type:"get",
			dataType:"json",
			success:function (result) {
				if (result.code==100){
					window.location.href = result.target;
				}
			}
		});

	});


	$(document).on("click","#cartAdd",function () {
		goodId=$(this).attr("good-id");
		console.log("goodId----"+goodId);
		quality=$("#qualitys option:selected").text();
		console.log("quality---"+quality);
		userId=$(this).attr("user-id");
		console.log("------userId"+userId);

		$.ajax({
			url: "chartAdd",
			type: "GET",
			data: {"goodId": goodId, "quality": quality, "userId": userId},
			dataType: "json",
			success: function (result) {
				//请求成功的处理
				if (result.code == 100) {
					//操作成功
					alert("购物车加入成功！");
				}
			}
		});
	});

	$(function () {
		$.ajax({
			url: "aboutGoodsList",
			type: "GET",
			data:{"goodType": goodType},
			dataType: "json",
			beforeSend: function () {
				//请求发送之前的处理
				$("#aboutGoodsList").empty();
				$("#aboutGoodsList").append("<div><a colspan='6'>正在加载商品信息，请稍后。。。</a></div>")
			}, success: function (result) {
				//请求成功的处理
				if (result.code == 100) {
					//操作成功
					console.log(result)
					build_about_goods_content(result);

				} else {
					//操作失败
					$("#aboutGoodsList").empty();
					$("#aboutGoodsList").append("<tr><td colspan='6'>操作失败，请稍后再试</td></tr>")
				}
			},
			error: function () {
				//请求过程出错的处理`
				$("#aboutGoodsList").empty();
				$("#aboutGoodsList").append("<tr><td colspan='6'>请求出错，请稍后再试！</td></tr>")
			}

		});
	});
	function build_about_goods_content(result) {
		$("#aboutGoodsList").empty();

		console.log(result);
		var goods = result.extend.aboutGoodsList;
		console.log(goods);
		$.each(goods,function (index,good) {
			var imageName="./upload/"+good.goodImage;
			var goodImageBody=$("<a class=\"preview\" id=\"preview\"></a>").attr("good-id",good.goodId).append("<img src="+imageName+">");
			var goodNameBody=$("<h2></h2>").append(good.goodName);

			var goodBottom=$("<div></div>").addClass("price-details");
			var goodPrice=$("<div></div>").addClass("price-number")
					.append("<p><span class=\"rupees\"></span></p>").append("￥"+good.goodPrice);
			var cart=$("<div></div>").addClass("add-cart preview").append("<h4><a href=\"preview\">加入购物车</a></h4>");
			var clear=$("<div></div>").addClass("clear");

			goodBottom.append(goodPrice).append(cart).append(clear);
			$("<div style='min-height:300px;max-height: 300px'></div>").addClass("grid_1_of_4 images_1_of_4")
					.append(goodImageBody).append(goodNameBody).append(goodBottom)
					.appendTo("#aboutGoodsList");
		});
	}

	$(document).on("click","#preview",function () {
		$.ajax({
			url:"goodGetInfo",
			data:{id:$(this).attr("good-id")},
			type:"get",
			dataType:"json",
			success:function (result) {
				if (result.code==100){
					window.location.href = result.target;
				}
			}
		});

		//发送异步请求
	});



	$(function () {
		$.ajax({
			url: "tree",
			type: "GET",
			dataType: "json",
			success: function (result) {
				//请求成功的处理
				if (result.code == 100) {
					//操作成功
					console.log(result);
					$("#categories").empty();
					$("#categories").append("<h3>Categories</h3>");
					$("#product").addClass("goodTypes").attr({
						"typeOneId": 0,
						"typeTwoId": 0,
						"brandId": 0
					});
					var goodsTypes = result.extend.goodsTypes;
					//console.log(goodsTypes);
					$.each(goodsTypes,function (index,goodsType) {
						var mainTypes=$("<dt></dt>");
						$("<a href=\"#\"></a>").append(goodsType.goodsTypeName).appendTo(mainTypes);

						var previewTypes=goodsType.nodes;
						//console.log(previewTypes);
						var goodPreviewTypesDD=$("<dd></dd>");
						if(index==0||index==2||index==3){
							$.each(previewTypes,function (index,previewType) {
								var brandTypes=previewType.nodes;
								$.each(brandTypes,function (index,brandType) {
									var goodPreviewTypes=$("<a href=\"#\"></a>").append(brandType.goodsTypeName);
									goodPreviewTypesDD.append(goodPreviewTypes);
								});
							});
						}else {
							$.each(previewTypes,function (index,previewType) {
								var goodPreviewTypes=$("<a href=\"#\"></a>").append(previewType.goodsTypeName);
								goodPreviewTypesDD.append(goodPreviewTypes);
							});
						}
						$("<dl></dl>").append(mainTypes).append(goodPreviewTypesDD)
								.appendTo("#categories");

					});


				}
			}
		});
	});

</script>
</html>

