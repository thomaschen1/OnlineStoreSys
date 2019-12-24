<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/top1.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/shopping_cart.css" />
</head>
<body>
	<!-- <span id="bg"><img alt="" src="./img/bg.gif"></span> -->

	<div id="top1" align="center">
		<!-- 最上面的信息，显示登录注册，可在此切换到登录注册画面-->
		<div id="whith">
			<div id="top1_left">
				Hi,欢迎来到网店购物&nbsp;&nbsp; <span id="span1"> <a href="entry.jsp"
					id="into">请登录</a>
					<div id="login_hidden">
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
								<input type="submit" id="login_submit" value="登录">
							</div>

						</form>
					</div>
				</span> <a href="entry.jsp">免费注册</a>


			</div>
			<div id="top1_right">
				<a href="userMassage.jsp">个人中心</a>| <a href="shopping。jsp">购物车</a>|
				<a href="order。jsp">订单管理</a>
			</div>
		</div>

	</div>
	
	<div id="box">
		<div id="little_box">
			<div style="font-size: 60px; color: #6a6a6a; font-family: cursive;"
				align="center"><%="购物车"%></div>
			<div id="top4"  align="center">
				<div id="top4_left">&nbsp;&nbsp;上架商品</div>
			</div>
			<div id="pro_list" style="height: auto; overflow: auto;">
				<!-- 热门商品兰 -->
				<!-- 通过Product类传入href、img、商品名称、价格等 -->
				<table>
					<thead>
					<tr>
						<th style="width: auto;">商品图片</th>
						<th style="width: 100px;">商品描述</th>
						<th>规格</th>
						<th>单价</th>
						<th>数量</th>
						<th>总价</th>
						<th>操作</th>
					</tr>
				</thead>
					<tbody>

						<%
							for (int i = 0; i < 5; i++) {
						%><tr>
							<td align="center" style="width: 50px;height: 50px">
								<div class="product_img">
									<img alt="" src="" style="width: 50px;height: 50px">
								</div>
							</td>
							<td align="center"><%="商品名称"%></td>
							<td align="center"><%="规格"%></td>
							<td align="center"><%="单价"%></td>

							<td align="center"><%="数量"%></td>
							<td align="center"><%="总额"%></a></td>
							<td align="center"><%="操作"%></a></td>
							<%
								
							%>
							
						<%
							}
						%>
					</tbody>
				</table>
			</div>
		</div>
	
	</div>
	
	
	
	
</body>
</html>