<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,cn.thomaschen.productBean.ProductBean,product.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/top1.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/store.css" />

<title><%="获取店名" %></title>
</head>
<body>
	
		<span id="bg"><img alt="" src="./img/bg.gif"></span>

		<div id="top1" align="center">
			<!-- 最上面的信息，显示登录注册，可在此切换到登录注册画面-->
			<div id="whith">
				<div id="top1_left">
					Hi,欢迎来到网店购物&nbsp;&nbsp;
					<span id="span1">
					<a href="entry.jsp" id="into">请登录</a>
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
					
						<a href="entry.jsp">免费注册</a>
					
					
				</div>
				<div id="top1_right">
					<a href="userMassage.jsp">个人中心</a>|
					<a href="shopping。jsp">购物车</a>|
					<a href="order。jsp">订单管理</a>
				</div>
			</div>

		</div>
		
		<div id="box">
		 	<div id="little_box" style="height: auto;">
		 		<div style="font-size: 60px;color: #6a6a6a;font-family: cursive;" align="center"><%="网店名称" %></div>
		 		<div id="top4">
					<!-- 热门商品导航栏 -->

					<div id="top4_left">
						&nbsp;&nbsp;上架商品
					</div>
					
				</div>
		 		<div id="top5" style="height: auto;overflow: auto;">
					<!-- 热门商品兰 -->
					<!-- 通过Product类传入href、img、商品名称、价格等 -->
				<%
					for(int i=0;i<5;i++) {
				%>
					<a href="">
						<div id=""><img src="img/TOP5%20(2).png">
							<p>水花</p>
							<div class="buy">编辑</div>
						</div>
					</a>
				<%} %>
					<a href="">
						<div id=""><img src="./img/alter/add.jpg">
							<p>无</p>
							<div class="buy">添加</div>
						</div>
					</a>
				</div>
			</div>
		 	</div>
		
		</div>
		
		
		
		
</body>
</html>