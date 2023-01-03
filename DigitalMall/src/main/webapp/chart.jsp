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
        .categories dl dt a{
            display:block;
            font-size:0.8em;
            padding:8px 15px;
            color: #9C9C9C;
            font-family: 'ambleregular';
            margin:10px 10px 10px 20px;
            background:url(before/images/drop_arrow.png) no-repeat 0;
            border-bottom: 1px solid #EEE;
            text-transform:uppercase;
        }
		.categories dl dd{
			font-size:0.8em;
			padding:0 20px 0 10px;
			color: #9C9C9C;
			font-family: 'ambleregular';
			text-transform:uppercase;
			margin-left:20px;
		}
		.categories dl dd a{
			font-size:0.8em;
			padding:0 10px 0 10px;
			color: #9C9C9C;
			font-family: 'ambleregular';
			text-transform:uppercase
		}
		.categories a:hover{
			color:#B81D22;
		}
		.categories dl:last-child{
			padding:0 10px 20px 0px;
		}
		.goodFoot ul li{
			width: 100%;
		}
		.goodFoot ul li a {
			display: block;
			width: 50%;
			float: left;
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
				<li class="active"><a href="index">商城首页</a></li>
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
			<div class="empty">
				购物车空空如也，<a href="javascript:void(0);" >快去选购吧</a>
			</div>
			<table border="2px solid #ccc" id="table">
				<thead>
				<th>
					<input id="check_all" type="checkbox" class="checkOnly" style="vertical-align:middle;"checked >
				</th>
				<th>商品</th>
				<th>数量</th>
				<th>单价</th>
				<th>小计</th>
				<th>操作</th>
				</thead>

				<tbody>

				</tbody>
				<tfoot>
				<tr>
					<td colspan="7" class="talast">
						 <span>商品一共
						 <span class="goods_num" style="color:red;font-size:20px;">0</span> 件; 共计花费
						 <span class="pricetal" style="color:red;font-size:20px;">0</span> 元; 其中最贵的商品单价是
						 <span class="pricest" style="color:red;font-size:20px;">0</span> 元</span>
					</td>
				</tr>
				</tfoot>
			</table>



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

				function DropDown(el) {
					this.dd = el;
					this.initEvents();
				}
				DropDown.prototype = {
					initEvents: function() {
						var obj = this;

						obj.dd.on('click', function(event) {
							$(this).toggleClass('active');
							event.stopPropagation();
						});
					}
				};

				$(function() {

					var dd = new DropDown($('#dd'));

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
								console.log(result.code);
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

				var currPage  = 1;
				$(function () {
					to_page(currPage);
				});


				var pn;
				function to_page(pn) {
					$.ajax({
						url: "chartList",
						type: "GET",
						data:{"pn": pn},
						dataType: "json",
						beforeSend: function () {
							//请求发送之前的处理
							$("#table tbody").empty();
							$("#table tfoot").empty();
							$("#table tbody").append("<tr><td colspan='6'>正在加载商品信息，请稍后。。。</td></tr>")
						}, success: function (result) {
							console.log(result);
							//请求成功的处理
							if (result.code == 100) {
								//操作成功
								//1.显示院校管理员信息
								build_goods_table(result);
								//2显示分页信息
								build_page_nav(result);

								total();

							} else {
								//操作失败
								$("#table tbody").empty();
								$("#table tfoot").empty();
								$("#table tbody").append("<tr><td colspan='6'>操作失败，请稍后再试</td></tr>")
							}
						},
						error: function () {
							//请求过程出错的处理`
							$("#table tbody").empty();
							$("#table tfoot").empty();
							$("#table tbody").append("<tr><td colspan='6'>请求出错，请稍后再试！</td></tr>")
						}

					});
				}
				var sum=0;
				function build_goods_table(result) {
					 sum=0;
					$("#table tbody").empty();
					var charts = result.extend.pageInfo.list;
					console.log(charts);

					$.each(charts,function (index,chart) {
						var chkTd=$("<td></td>").append($("<input>").attr({"type":"checkbox","style":"vertical-align: middle!important","checked":"checked"}).addClass("check"));
						var goodIdTd = chkTd.append($("<input>").attr("type","hidden").append(chart.orderId));
						var imageName="./upload/"+chart.goodInfo.goodImage;
						var goodImageTd= $("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append("<img src="+imageName+" id=\"show\" width=\"200\">");
						var goodNameTd = goodImageTd.append(chart.goodInfo.goodName);
						var goodPriceTd=$("<td>$</td>").attr("style","vertical-align: middle!important;text-align: center").append($("<span class=\"price\"></span>").append(chart.goodInfo.goodPrice));

						var spanA=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append(" <span>\n" +
								" <input type=\"button\" value=\"-\" class=\"reduces\">\n" +
								"<span class=\"span\" id='quality' >"+chart.quality+"</span>\n" +
								" <input type=\"button\" value=\"+\" class=\"adds\">\n" +
								" </span>");
						var spanB=$("<td>$</td>").attr("style","vertical-align: middle!important;text-align: center").append($("<span class=\"prices\"></span>").append(chart.goodInfo.goodPrice*chart.quality));
						var deleteBtn=$("<button></button>").addClass("btn btn-danger delete-btn").attr("type","button")
								.append($("<span></span>").addClass("glyphicon glyphicon-remove")).append("删除");
						var btnGp=$("<div></div>").addClass("btn-group").attr({"role":"group","aria-label":"..."}).append(deleteBtn);
						deleteBtn.attr("delete-id",chart.orderId);
						// resetBtn.attr("reset-id",good.id);
						var btnDivTd=$("<td></td>").attr("style","vertical-align: middle!important;text-align: center").append(btnGp);
						sum+=chart.goodInfo.goodPrice*chart.quality;
						console.log(sum);
						$("<tr></tr>").append(chkTd)
								.append(goodIdTd)
								.append(goodImageTd).append(spanA)
								.append(goodPriceTd).append(spanB)
								.append(btnDivTd)
								.appendTo("#table tbody");
					});

				}

				$(document).on("click",".delete-btn",function () {
					var goodName = $(this).parents("tr").find("td:eq(1)").text();
					if (confirm("确定要将【"+goodName+"】移出购物车吗？")){
						$.ajax({
							url:"offChart/" + $(this).attr("delete-id"),
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

				$(document).on("click",".adds",function () {
					$(this).each(function () {
						//1.改变数量
						var count = parseFloat($(this).parents("tr").find(".span").html());
						count++;
						console.log("count"+count);
						$(this).parent("span").find(".span").html(count);
						//2.改小计(先找到单价与数量，再相乘，最后放在小计(“.prices”)里)
						var price = parseFloat($(this).parents("tr").find(".price").html());
						var money = (price * count);
						$(this).parents("tr").find(".prices").html(money);
						//3.改总价
						total();
						console.log($(this).parents("tr").find("td:eq(0)").text())
						$.ajax({
							url:"qualityAdds/" + $(this).parents("tr").find("td:eq(0)").text(),
							type:"get",
							data:{"count":count},
							dataType:"json"
						});
					});


				});

				$(document).on("click",".reduces",function () {
					$(this).each(function () {//点击减少的按钮
							//1.改变数量
							var count = parseFloat($(this).parents("tr").find(".span").html());
							count--;
							if (count < 1) { //当数量减到1时不能再减
								return;
							}
							$(this).parent("span").find(".span").html(count);
							//2.改小计
							var price = parseFloat($(this).parents("tr").find(".price").html());
							var money = (price * count);
							$(this).parents("tr").find(".prices").html(money);

							total();

						$.ajax({
							url:"qualityReduces/" +$(this).parents("tr").find("td:eq(0)").text(),
							type:"get",
							data:{"count":count},
							dataType:"json"
						});
					});
				});

				function total() {
					var sum = 0;
					$(".adds").each(function () {
						if ($(this).parents("tr").find(".check").prop("checked")) {
							sum+=parseFloat($(this).parents("tr").find(".prices").html());
						}
					});
					$(".pricetal").html("总计： $"+sum);
				}


				$("#check_all").click(function () {
					//attr获取或设置自定义的属性值，prop获取或这是原生dom
					$(".check").prop("checked",$(this).prop("checked"));
					total();
				});


				$(document).on("click",".check",function () {
					$("#check_all").prop("checked",$(".check").length == $(".check:checked").length);
					total();
				});

				function build_page_nav(result) {
					$("#table tfoot").empty();
					var pageInfo = result.extend.pageInfo;
					currPage = pageInfo.pageNum;

					var pageUl = $("<ul></ul>").addClass("pagination");

					var firstPageLi = $("<li></li>").append($("<a></a>").append("首页"));
					if (pageInfo.isFirstPage) {
						firstPageLi.addClass("disabled");
					} else {
						firstPageLi.click(function () {
							to_page(1);
						});
					}
					pageUl.append(firstPageLi);

					var previousPageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
					if (pageInfo.hasPreviousPage) {
						previousPageLi.click(function () {
							to_page(pageInfo.pageNum - 1);
						});
					} else {
						previousPageLi.addClass("disabled");
					}
					pageUl.append(previousPageLi);

					$.each(pageInfo.navigatepageNums, function (index, num) {
						var pageLi = $("<li></li>").append($("<a></a>").append(num));
						if (num == pageInfo.pageNum) {
							pageLi.addClass("active");
						} else {
							pageLi.click(function () {
								to_page(num);
							});
						}
						pageUl.append(pageLi);
					});

					var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
					if (pageInfo.hasNextPage) {
						nextPageLi.click(function () {
							to_page(pageInfo.pageNum + 1);
						});
					} else {
						nextPageLi.addClass("disabled");
					}
					pageUl.append(nextPageLi);

					var lastPageLi = $("<li></li>").append($("<a></a>").append("末页"));
					if (pageInfo.isLastPage) {
						lastPageLi.addClass("disabled");
					} else {
						lastPageLi.click(function () {
							to_page(pageInfo.pages);
						});
					}

					var addBtn=$("<button></button>").addClass("btn btn-default").attr({"type":"button","data-toggle":"modal","data-target":"#areaAdmin_add_modal","id":"areaAdmin_add_btn"})
							.append($("<span></span>").addClass("glyphicon glyphicon-plus")).attr("style","color: #1B6D85;").append("<a></a>").attr("style","color: #1B6D85;").append("结&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;算");

					var btnGp=$("<div id='fi'></div>").append(addBtn);

					pageUl.append(lastPageLi);
					$("<td></td>").attr("colspan","6").append(pageUl).append(btnGp).append($("<div style='float: right' ></div>").append($("<span class=\"pricetal\"></span>").append("总计： $ "+sum))).appendTo($("table tfoot"));

				}
		</script>
		<style type="text/css">
			table {
				width: 1000px;
				/* height: 300px; */
				border-collapse: collapse;
				table-layout: fixed;
				text-align: center;
				font-size: 18px;
				margin: 0 auto;
			}
			table tfoot a{
				display: block;
				padding: 1%;
				margin:1% 0 1%  0.5%;
				width: 5%;
				float: left;
			}

			#fi{
				color: #0f0f0f;
				display: block;
				float: right;
			}
			a {
				text-decoration: none;
				color: black;
			}

			tr {
				height: 50px;
			}

			.check {
				width: 20px;
				height: 20px;
			}

			.checkOnly {
				width: 20px;
				height: 20px;
			}

			.empty {
				font-size: 25px;
				position: fixed;
				top: 45%;
				left: 45%;
				display: none;
			}

			.empty a {
				color: pink;
			}

			.empty a:hover {
				text-decoration: underline;
			}
		</style>


</body>
</html>
