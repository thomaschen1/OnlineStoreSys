<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<link rel="icon" href="img/未标题-1.png">
		<link rel="stylesheet" type="text/css" href="./css/main.css" />
		
		<!-- <link rel="stylesheet" type="text/css" href="css/new_file%20(2).css" /> -->
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
					<a href="entry.jsp" id="into">请登录</a>
					<a href="logon.jsp">免费注册</a>
				</div>
				<div id="top1_right">
					<a href="user_assage.jsp">个人中心</a>
					<img src="img/1543721325(1).jpg"></a>|
		
					<a href="index.html">购物车<img src="img/1543721325(1).jpg"></a>|
					<a href="index.html">订单管理</a>
					
				</div>
			</div>

		</div>
		<div id="box">
			<!-- 页面主体内容，显示商品信息 -->
			<div id="little_box">
				<div id="top2">
					<!-- 搜索栏 -->

					<div id="top2_left">
						<img src="img/合成-1.gif" id="logo">
					</div>
					<div id="top2_search">
						<form action="" method="">
							<input type="text" name="search" placeholder="  搜索商品" id="search" />
							<input type="submit" value="搜索" id="buttum" />
							<ul>
							<% String product_name[]={"衣服","shou","爱心","音乐","动漫","泡泡","炫酷流光"}; %>
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
								<div class="b"><a href="" name="">通用素材</a></div>
								<div class="c"><a href="" name="">花纹</a>/<a href="" name="">流光</a></div>
								<div class="top3_center_hidden">
									<img src="img/TOP5%20-%20(1).png" class="hiddent-img">
									<img src="img/TOP5%20(6).png" class="hidden-little-img">
									<img src="img/TOP5%20-%20(4).png" class="hidden-little-img">
									<img src="img/TOP5%20(5).png" class="hidden-little-img" id="qqq">
									<img src="img/TOP5%20-%20(5).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b3" class="d">
								<div class="b"><a href="" name="">活动图标</a></div>
								<div class="c"><a href="" name="">LOGO</a>/<a href="" name="">动物</a></div>
								<div class="top3_center_hidden">
									<img src="img/TOP5%20(1).png" class="hiddent-img">
									<img src="img/TOP5%20-%20(2).png" class="hidden-little-img">
									<img src="img/TOP5%20-%20(3).png" class="hidden-little-img">
									<img src="img/TOP5%20-%20(7).png" class="hidden-little-img" id="qqq">
									<img src="img/龙.png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b4" class="d">
								<div class="b"><a href="" name="">社团图标</a></div>
								<div class="c"><a href="" name="">工作室</a>/<a href="" name="">社团</a></div>
								<div class="top3_center_hidden">
									<img src="img/LOGO%20(1).png" class="hiddent-img">
									<img src="img/LOGO%20(3).png" class="hidden-little-img">
									<img src="img/LOGO%20(5).png" class="hidden-little-img">
									<img src="img/LOGO%20(7).png" class="hidden-little-img" id="qqq">
									<img src="img/LOGO%20(8).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b5" class="d">
								<div class="b"><a href="" name="">网页图标</a></div>
								<div class="c"><a href="" name="">LOGO</a>/<a href="" name="">元素</a></div>
								<div class="top3_center_hidden">
									<img src="img/星光logo.png" class="hiddent-img">
									<img src="img/未标题-1.png" class="hidden-little-img">
									<img src="img/龙.png" class="hidden-little-img">
									<img src="img/top5-img%20(3).png" class="hidden-little-img" id="qqq">
									<img src="img/TOP5%20-%20(8).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b6" class="d">
								<div class="b"><a href="" name="">软件图标</a></div>
								<div class="c"><a href="" name="">DIY元素</a>/<a href="" name="">流光</a></div>
								<div class="top3_center_hidden">
									<img src="img/TOP5%20-%20(1).png" class="hiddent-img">
									<img src="img/TOP5%20-%20(6).png" class="hidden-little-img">
									<img src="img/未标题-1.png" class="hidden-little-img">
									<img src="img/top5-img%20(3).png" class="hidden-little-img" id="qqq">
									<img src="img/TOP5%20-%20(4).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b7" class="d">
								<div class="b"><a href="" name="">简历图标</a></div>
								<div class="c"><a href="" name="">LOGO</a>/<a href="" name="">GIF图</a></div>
								<div class="top3_center_hidden">
									<img src="img/top5-img%20(1).png" class="hiddent-img">
									<img src="img/TOP5%20(5).png" class="hidden-little-img">
									<img src="img/未标题-1.png" class="hidden-little-img">
									<img src="img/龙.png" class="hidden-little-img" id="qqq">
									<img src="img/TOP5%20-%20(4).png" class="hidden-little-img" id="qwe">
								</div>
							</li>
							<li id="b8" class="d">
								<div class="b"><a href="" name="">其他</a></div>
								<div class="c"><a href="" name="">LOGO</a>/<a href="" name="">GIF图</a></div>
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
									<img src="img/二维码sheng.jpg" class="二维码" id="sheng">
									<img src="img/top5-img%20(1).png" class="hiddent-img">
									<img src="img/二维码xin.jpg" class="二维码" id="xin">
									<img src="img/二维码（3）%20(1).jpg" class="二维码" id="run">
									<img src="img/二维码（3）%20(2).jpg" class="二维码" id="chao">
								</div>
							</li>
						</ul>
					</div>
					<div id="top3_top">
						<ul>
							<li><a href="">扁平化</a></li>
							<li><a href="">小清新</a></li>
							<li><a href="">中国风</a></li>
							<li><a href="">酷炫风</a></li>
							<li><a href="">简约风</a></li>
							<li><a href="">手绘风</a></li>
							<li><a href="">卡通风</a></li>
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
				
				<div id="top4"><!-- 热门商品导航栏 -->
					

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
							<div class="buy">免费使用</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/TOP5%20(3).png">
							<p>翅膀</p>
							<div class="buy">免费使用</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/TOP5%20(1).png">
							<p>禅意</p>
							<div class="buy">免费使用</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/TOP5%20(6).png">
							<p>流光</p>
							<div class="buy">免费使用</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/TOP5%20(5).png">
							<p>花纹</p>
							<div class="buy">1元购买</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="img/龙.png">
							<p>小猫咪</p>
							<div class="buy">1元购买</div>
						</div>
					</a>
				</div>
			</div>
		</div>

</body>
</html>