<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*,java.text.SimpleDateFormat,cn.thomaschen.productBean.ProductBean,product.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/top1.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/store.css" />

<title><%="获取店名"%></title>
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
		<div id="little_box" style="height: auto;">
			<div style="font-size: 60px; color: #6a6a6a; font-family: cursive;"
				align="center"><%="网店名称"%></div>
			<div id="top4"  align="center">
				<div id="top4_left">&nbsp;&nbsp;上架商品</div>
			</div>
			<div id="top5" style="height: auto; overflow: auto;">
				<!-- 热门商品兰 -->
				<!-- 通过Product类传入href、img、商品名称、价格等 -->
				<%
					for (int i = 0; i < 5; i++) {
				%>
				
					<div id="">
						<img src="img/TOP5%20(2).png">
						<p>水花</p>
						<a href="#"><button class="edit">编辑</button></a>
						<button class="edit">删除</button>
					</div>
				
				<%
					}
				%>
				<a href="">
					<div id="">
						<img src="./img/alter/add.jpg">
						
						<div class="add">添加</div>
					</div>
				</a>
			</div>

		</div>


		<div id="top4"  align="center">
			<div id="top4_left">&nbsp;&nbsp;订单信息</div>
		</div>
		<div id="order_massage" align="center" style="overflow-x: hidden;">
			<table >
				<thead>
					<tr>
						<th style="width: auto;">id</th>
						<th style="width: 100px;">姓名</th>
						<th>地址</th>
						<th style="width: 130px;">手机</th>
						<th>商品名称</th>
						<th>商品类型</th>
						<th>订单号</th>
						<th>交易时间</th>
					</tr>
				</thead>
				<tbody>
					<% for(int i=0;i<10;i++) { %>
						<tr>
							<td align="center"><%="1813420111"%></td>
							<td align="center"><%="梁佩升"%></td>
							<td align="center"><%="广东省广州市番禺区广州番禺职业技术学院"%></td>
							<td align="center"><%="15627573784"%></td>
							
							<td align="center"><%="iPhone10"%></td>
							<td align="center"><%="红·满配"%></a></td>
							<td align="center"><%="100981122311"%></a></td>
							<%
								
							%>
							<!-- 这里是获取订单完成那一刻的时间  -->
							<td align="center"><%="yyyy年MM月dd日 hh:mm:ss"%></a></td>
						</tr>
					<% } %>
				</tbody>
			</table>
		</div>

	</div>





</body>
</html>