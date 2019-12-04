<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<link rel="stylesheet"  href="<%=request.getContextPath()%>/css/main.css" />
		<title>网店系统</title>
</head>
<body>
<body onload="a()">

		<span id="bg"><img alt="" src="./img/bg.gif"></span>

		<div id="top1" align="center">
			<!-- 最上面的信息，显示登录注册，可在此切换到登录注册画面-->
			<div id="whith">
				<div id="top1_left">
					Hi,欢迎来到网店购物&nbsp;&nbsp;
					<span id="span1"><a href="entry.jsp" id="into">请登录</a>
					<div id="login_hidden" >
						<form action="">
							<table>
							<tr>
								<td><strong>账号：</strong></td>
								<td><input type="text" id="login_ID"></td>
							</tr>
							<tr>
								<td><strong>密码：</strong></td>
								<td><input type="password" id="login_pwd"></td>
							</tr>
							
							</table>
							<div align="center" id="lg_div">
								<input type="submit" id="login_submit" value="登录" >
							</div>
							
						</form>
					</div>
					</span>
					<a href="logon.jsp">免费注册</a>
				</div>
				<div id="top1_right">
					<a href="userMassage.jsp">个人中心</a>|
					<a href="shopping。jsp">购物车</a>|
					<a href="order。jsp">订单管理</a>
				</div>
			</div>

		</div>
		<div id="box">
			<!-- 页面主体内容，显示商品信息 -->
			<div id="little_box">
				<div id="top2">
					<!-- 搜索栏 -->

					<div id="top2_left">
						<img src="./img/logo.gif" id="logo">
					</div>
					<div id="top2_search">
						<form action="" method="">
							<input type="text" name="search" placeholder="  搜索商品" id="search" />
							<input type="submit" value="搜索" id="buttum" />
							<ul>
							<% String product_name[]={"服装","手机","玩具","乐器","飞机","礼物","电器"}; %>
								<li><a href="" name=""><%=product_name[0]%></a></li>
								<li><a href="" name=""><%=product_name[1]%></a></li>
								<li><a href="" name=""><%=product_name[2]%></a></li>
								<li><a href="" name=""><%=product_name[3]%></a></li>
								<li><a href="" name=""><%=product_name[4]%></a></li>
								<li><a href="" name=""><%=product_name[5]%></a></li>
								<li><a href="" name=""><%=product_name[6]%></a></li>
							</ul>
							<div id="shouhou">
								<div id="page">
									<img src="img/未标题-1.png">&nbsp;&nbsp;LOGO&nbsp;&nbsp;<img src="img/1543723541(1).jpg" id="pagelist">
									<div id="page-list">
										<div><a href="http://127.0.0.1:8848/%E7%AB%9E%E8%B5%9BWORD/index.html">&nbsp;<img src="img/page%20(1).png">&nbsp;&nbsp;WORD&nbsp;</a></div>
										<div><a href="http://127.0.0.1:8848/%E7%AB%9E%E8%B5%9B-%E7%BD%91%E9%A1%B5/index.html">&nbsp;&nbsp;&nbsp;<img
												 src="img/page.jpg">&nbsp;&nbsp;网页&nbsp;&nbsp;</a></div>
										<div><a href="http://127.0.0.1:8848/%E7%AB%9E%E8%B5%9BPPT/index.html">&nbsp;&nbsp;&nbsp;<img src="img/logoppt.png">&nbsp;&nbsp;PPT&nbsp;&nbsp;</a></div>
										<div><a href="http://127.0.0.1:8848/%E7%AB%9E%E8%B5%9B%E4%B8%BB%E9%A1%B5/index.html">&nbsp;&nbsp;&nbsp;&nbsp;<img
												 src="img/网页.jpg">&nbsp;&nbsp;主页</a></div>

									</div>
								</div>
							</div>
						</form>
					</div>
					<div id="top2_right">

					</div>
				</div>
				<div id="top3">
					<!-- 分类栏 -->

					<div id="top3_left">
						<ul>
							<li id="first_list">
								<div id="b">全部分类</div>
								<div class="c"><img src="img/搜狗截图_2018-12-11_08-54-19.png">&nbsp;</div>
							</li>
							<li id="b2" class="d">
								<div class="b"><a href="" name=""><%=product_name[0]%></a></div>
								<div class="c"><a href="" name="">促销</a>/<a href="" name="">热门</a></div>
								<div class="top3_center_hidden">
									<img src="img/TOP5%20-%20(1).png" class="hiddent-img">
									<img src="img/TOP5%20(6).png" class="hidden-little-img">
									<img src="img/TOP5%20-%20(4).png" class="hidden-little-img">
									<img src="img/TOP5%20(5).png" class="hidden-little-img" id="qqq">
									<img src="img/TOP5%20-%20(5).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b3" class="d">
								<div class="b"><a href="" name=""><%=product_name[1]%></a></div>
								<div class="c"><a href="" name="">促销</a>/<a href="" name="">热门</a></div>
								<div class="top3_center_hidden">
									<img src="img/TOP5%20(1).png" class="hiddent-img">
									<img src="img/TOP5%20-%20(2).png" class="hidden-little-img">
									<img src="img/TOP5%20-%20(3).png" class="hidden-little-img">
									<img src="img/TOP5%20-%20(7).png" class="hidden-little-img" id="qqq">
									<img src="img/龙.png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b4" class="d">
								<div class="b"><a href="" name=""><%=product_name[2]%></a></div>
								<div class="c"><a href="" name="">促销</a>/<a href="" name="">热门</a></div>
								<div class="top3_center_hidden">
									<img src="img/LOGO%20(1).png" class="hiddent-img">
									<img src="img/LOGO%20(3).png" class="hidden-little-img">
									<img src="img/LOGO%20(5).png" class="hidden-little-img">
									<img src="img/LOGO%20(7).png" class="hidden-little-img" id="qqq">
									<img src="img/LOGO%20(8).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b5" class="d">
								<div class="b"><a href="" name=""><%=product_name[3]%></a></div>
								<div class="c"><a href="" name="">促销</a>/<a href="" name="">热门</a></div>
								<div class="top3_center_hidden">
									<img src="img/星光logo.png" class="hiddent-img">
									<img src="img/未标题-1.png" class="hidden-little-img">
									<img src="img/龙.png" class="hidden-little-img">
									<img src="img/top5-img%20(3).png" class="hidden-little-img" id="qqq">
									<img src="img/TOP5%20-%20(8).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b6" class="d">
								<div class="b"><a href="" name=""><%=product_name[4]%></a></div>
								<div class="c"><a href="" name="">促销</a>/<a href="" name="">热门</a></div>
								<div class="top3_center_hidden">
									<img src="img/TOP5%20-%20(1).png" class="hiddent-img">
									<img src="img/TOP5%20-%20(6).png" class="hidden-little-img">
									<img src="img/未标题-1.png" class="hidden-little-img">
									<img src="img/top5-img%20(3).png" class="hidden-little-img" id="qqq">
									<img src="img/TOP5%20-%20(4).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b7" class="d">
								<div class="b"><a href="" name=""><%=product_name[5]%></a></div>
								<div class="c"><a href="" name="">促销</a>/<a href="" name="">热门</a></div>
								<div class="top3_center_hidden">
									<img src="img/top5-img%20(1).png" class="hiddent-img">
									<img src="img/TOP5%20(5).png" class="hidden-little-img">
									<img src="img/未标题-1.png" class="hidden-little-img">
									<img src="img/龙.png" class="hidden-little-img" id="qqq">
									<img src="img/TOP5%20-%20(4).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b8" class="d">
								<div class="b"><a href="" name=""><%=product_name[6]%></a></div>
								<div class="c"><a href="" name="">促销</a>/<a href="" name="">热门</a></div>
								<div class="top3_center_hidden">
									<img src="img/TOP5%20(2).png" class="hiddent-img">
									<img src="img/TOP5%20-%20(2).png" class="hidden-little-img">
									<img src="img/TOP5%20-%20(7).png" class="hidden-little-img">
									<img src="img/top5-img%20(2).png" class="hidden-little-img" id="qqq">
									<img src="img/TOP5%20(3).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b9" class="d">
								<div class="b">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=""
									 name="">私人订制</a></div>
								<div class="top3_center_hidden">
									<img src="img/二维码sheng.jpg" class="b9_p" id="sheng">
									<img src="img/top5-img%20(1).png" class="hiddent-img">
									<img src="img/二维码xin.jpg" class="b9_p" id="xin">
									<img src="img/二维码（3）%20(1).jpg" class="b9_p" id="run">
									<img src="img/二维码（3）%20(2).jpg" class="b9_p" id="chao">
								</div>
							</li>
						</ul>
					</div>
					<div id="top3_top">
						<ul>
							<li><a href="">热门</a></li>
							<li><a href="">促销</a></li>
							<li><a href="">好评</a></li>
							<li><a href="">ACG</a></li>
							<li><a href="">中国风</a></li>
							<li><a href="">北美风</a></li>
							<li><a href="">日本风</a></li>
							<li id="void">&nbsp;</li>
						</ul>

					</div>
					<div id="top3_center"><!-- 轮播图 -->
						
						<div id="">
							<div id="q1">
								<div id="d1">
									<img src="../竞赛-网页/img/YX5.jpg" class="imgL active">
									<img src="../竞赛-网页/img/YX1.jpg" class="imgL">
									<img src="../竞赛PPT/img/cat.png" class="imgL">
									<button type="button" class="left" onmousedown="left()"><</button>
									<button type="button" class="right" onmousedown="right()">></button>
									
								</div>
								<div id="d2">
									<ul>
										<li class="litter ac" data="0"></li>&nbsp;
										<li class="litter" data="1"></li>&nbsp;
										<li class="litter" data="2"></li>
									</ul>
								</div>
							</div>
							<script type="text/javascript">
								var imgs = document.getElementsByClassName('imgL');
								var litters = document.getElementsByClassName('litter');
								var time = 0,
									j = 0;

								function b() {

									for (var i = 0; i < imgs.length; i++) {

										imgs[i].className = 'imgL';
										litters[i].className = 'litter';
									}

								}

								function a() {
									setInterval("c()", 500)
								}

								function c() {
									time++;
									if (time == 10) {
										time = 0;
										j++;
										if (j == 3) {
											j = 0;
										}
										b();
										imgs[j].className = 'imgL active';
										litters[j].className = 'litter ac';
									}
								}

								for (var i = 0; i < litters.length; i++) {
									litters[i].addEventListener('click', function() {
										var give = this.getAttribute('data');
										j = give - 1;
										time = 9;
										c();
									})
								}

								function left() {
									time = 9;
									j = j - 2;
									if (j == -2) {
										j = 1;
									}
									c();
								}

								function right() {
									time = 9;
									c();
								}
							</script>

						</div>
						<!-- <div id="toushi">
							<div id="box-lunbo">
								<img src="img/top5-img%20(1).png">
								<div id="sqare_shenlv"><a href=""><img src="img/LOGO%20(9).png"></a></div>
								<div id="sqare_lan"><a href=""><img src="img/LOGO%20(1).png"></a></div>
								<div id="sqare_qing"><a href=""><img src="img/LOGO%20(2).png"></a></div>
								<div id="sqare_yellow"><a href=""><img src="img/LOGO%20(3).png"></a></div>
								<div id="sqare_lv"><a href=""><img src="img/LOGO%20(4).png"></a></div>
								<div id="sqare_zi"><a href=""><img src="img/LOGO%20(8).png"></a></div>

							</div>
						</div> -->
						<a href="index.html"><img src="img/星光logo.png" class="img"></a>
						<a href="index.html"><img src="img/LOGO%20(7).png" class="img"></a>
						<a href="index.html"><img src="img/LOGO%20(5).png" class="img"></a>
					</div>
				</div>
				<div id="top4">
					<!-- 热门商品导航栏 -->

					<div id="top4_left">
						&nbsp;&nbsp;热门素材
					</div>
					<div id="top4_right">
						<a href="">LOGO</a>&nbsp;/
						<a href="">GIF图</a>&nbsp;/
						<a href="">表情包</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="">查看全部<img src="img/右三角.png"></a>
					</div>
				</div>
				<div id="top5">
					<!-- 热门商品兰 -->

					<a href="">
						<div id=""><img src="img/TOP5%20(2).png">
							<p>水花</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/TOP5%20(3).png">
							<p>翅膀</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/TOP5%20(1).png">
							<p>禅意</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/TOP5%20(6).png">
							<p>流光</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/TOP5%20(5).png">
							<p>花纹</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/龙.png">
							<p>小猫咪</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
				</div>
			</div>
		</div>

</body>
</html>