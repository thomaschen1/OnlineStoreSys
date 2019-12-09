<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"  href="<%=request.getContextPath()%>/css/product_show.css" />
<link rel="stylesheet"  href="<%=request.getContextPath()%>/css/top1.css" />		
<title><%="Product.getProduct_Name()" %></title>
</head>
<body>
	
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
					
						<a href="entry.jsp">免费注册</a>
					
					
				</div>
				<div id="top1_right">
					<a href="userMassage.jsp">个人中心</a>|
					<a href="shopping。jsp">购物车</a>|
					<a href="order。jsp">订单管理</a>
				</div>
			</div>

		</div>
		
		<span id="bg"><img alt="" src="./img/bg.gif" ></span>
		<div id="box">
			
			<div id="little_box">
				<div id="pro_img">
				<!-- 商品照片 -->
				</div>
				
				<div id="pro_massage">
					<div id="pro_name">
					<!-- 商品名称 -->
					<%="Product.getProduct_Name()" %>
					</div>
					<div id="pro_price">
					<!-- 商品价格：需要随样式的不同而改变 -->
					</div>
					<div id="pro_style">
					<!-- 商品样式 -->
					</div>
					<div id="pro_describ">
					<!-- 商品介绍 -->
					</div>
				</div>
			
			</div>
		</div>
		
</body>
</html>