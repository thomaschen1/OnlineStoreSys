<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="cn.thomaschen.entity.Product,cn.thomaschen.entity.User" %>
    
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8" />
		<link rel="stylesheet"  href="<%=request.getContextPath()%>/css/main.css" />
		<title>网店系统</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	User user=new User();
	String phonenumber=request.getParameter("phonenumber");
	String password=request.getParameter("password");
	if(phonenumber!=null&&password!=null){
		user.setPhonenumber(phonenumber);
		user.setPassword(password);
%>
		<jsp:useBean id="bean" class="cn.thomaschen.service.UserBean" scope="page"/>
		<%
			user=bean.judge(user);
				if(user==null){
		%>
		<script type="text/javascript" language="javascript">
		alert("密码错误");  
		</script>	
		<%
				}
					}else{
			%>
		<%
			user=(User)session.getAttribute("user");}
		%>
<body onload="a()">

		<span id="bg"><img alt="" src="./img/bg.gif"></span>

		<div id="top1" align="center">
			<!-- 最上面的信息，显示登录注册，可在此切换到登录注册画面-->
			<div id="whith">
				<div id="top1_left">
					Hi,欢迎来到网店购物&nbsp;&nbsp;
					<%if(user==null){%>
					Hi,欢迎来到网店购物&nbsp;&nbsp;
					<%
						if(user==null){
					%>
					<span id="span1"><a  id="into">请登录</a>
					
						
					<div id="login_hidden" >
					<form action="main.jsp">
							<table>
							<tr>
								<td><strong>账号：</strong></td>
								<td><input type="text" name="phonenumber" id="login_ID"></td>
							</tr>
							<tr>
								<td><strong>密码：</strong></td>
								<td><input type="password" name="password" id="login_pwd"></td>
							</tr>
							
							</table>
							<div align="center" id="lg_div">
								<input type="submit" id="login_submit" value="登录" >
								</form>
							</div>
					</div>
					</span>
					<a href="entry.jsp">免费注册</a>
					<%
						}
											else{
											session.setAttribute("user", user);
					%>
					<span id="span1"><a href="userMassage.jsp"><%=user.getPhonenumber()%></a>
					<%
						}
					%>				
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
						<img src="./img/main/logo.gif" id="logo">
					</div>
					<div id="top2_search">
						<form action="" method="">
							<input type="text" name="search" placeholder="  搜索商品" id="search" />
							<input type="submit" value="搜索" id="buttum" />
							<ul>
							<%
								String product_name[]={"服装","手机","玩具","乐器","飞机","礼物","电器"};
							%>
								<li><a href="" name=""><%=product_name[0]%></a></li>
								<li><a href="" name=""><%=product_name[1]%></a></li>
								<li><a href="" name=""><%=product_name[2]%></a></li>
								<li><a href="" name=""><%=product_name[3]%></a></li>
								<li><a href="" name=""><%=product_name[4]%></a></li>
								<li><a href="" name=""><%=product_name[5]%></a></li>
								<li><a href="" name=""><%=product_name[6]%></a></li>
							</ul>
							<%
								String store="shouhou_0";
																		if(user!=null)
																		store="shouhou" ;
							%>
							<div id="<%=store%>">
								<a href="store.jsp">
								<div id="page">
									<img src="./img/main/足迹.png">&nbsp;&nbsp;<%="我的店铺"%>&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
								</a>
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
								<div class="c"><img src="./img/main/分类图标.png">&nbsp;</div>
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
							<li><a href="">品牌</a></li>
							<li><a href="">潮流</a></li>
							<li><a href="">游戏</a></li>
							<li><a href="">虚拟</a></li>
							<li id="void">&nbsp;</li>
						</ul>

					</div>
					<div id="top3_center"><!-- 轮播图 -->
						
						<div id="">
							<div id="q1">
								<div id="d1">
								
								<!-- 通过Product传入href和src -->
								<%
									Product[] show;
								%>
								
									<a href="product_show.jsp" value="111"><img src=".\img\main\足迹.png" class="imgL active"></a>
									<a href="product_show.jsp"><img src="./img/bg.gif" class="imgL"></a>
									<a href="product_show.jsp"><img src="./img/main/logo.gif" class="imgL"></a>
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
						&nbsp;&nbsp;热门商品
					</div>
					<div id="top4_right">
						<a href=""><%=product_name[0] %></a>&nbsp;/
						<a href=""><%=product_name[1] %></a>&nbsp;/
						<a href=""><%=product_name[2] %></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="">查看全部&nbsp;&nbsp;↓</a>
					</div>
				</div>
				<div id="top5">
					<!-- 热门商品兰 -->
					<!-- 通过Product类传入href、img、商品名称、价格等 -->

					<a href="">
						<div id=""><img src="">
							<p>水花</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="">
							<p>翅膀</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="">
							<p>禅意</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="">
							<p>流光</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="">
							<p>花纹</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
					<a href="">
						<div id=""><img src="">
							<p>小猫咪</p>
							<div class="buy">立刻查看</div>
						</div>
					</a>
				</div>
			</div>
		</div>

</body>
</html>