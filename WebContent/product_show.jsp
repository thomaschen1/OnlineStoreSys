<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/product_show.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/top1.css" />
<title><%="Product.getProduct_Name()"%></title>
</head>
<body>

	<div id="top1" align="center">
		<!-- 最上面的信息，显示登录注册，可在此切换到登录注册画面-->
		<div id="whith">
			<div id="top1_left">
				Hi,欢迎来到网店购物&nbsp;&nbsp; <span id="span1"><a href="entry.jsp"
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
					</div> </span> <a href="entry.jsp">免费注册</a>


			</div>
			<div id="top1_right">
				<a href="userMassage.jsp">个人中心</a>| <a href="shopping。jsp">购物车</a>|
				<a href="order。jsp">订单管理</a>
			</div>
		</div>

	</div>

	<span id="bg"><img alt="" src="./img/bg.gif"></span>
	<div id="box">

		<div id="little_box">
			<div id="pro_img">
				<!-- 商品照片 -->
			</div>

			<div id="pro_massage">
				<table>
					<tr id="pro_name">
						<!-- 商品名称 -->
						<td><div class="tips1">名称&nbsp;:</div></td>
						<td><div id="massage_name" class="massage"><%="Product.getName()"%></div></td>

					</tr>
					<tr id="pro_describ">
						<!-- 商品介绍 -->
						<td><div class="tips1">介绍&nbsp;:</div></td>
						<td><div id="massage_describ" class="massage"><%="Product.getPrice()"%></div></td>

					</tr>
					<tr id="pro_price">
						<!-- 商品价格：需要随样式的不同而改变 -->
						<td><div class="tips1">价格&nbsp;:</div></td>
						<td><div id="massage_price" class="massage"><%="Product.getPrice()"%></div></td>
					</tr>
					<tr id="pro_style">
						<!-- 商品样式 -->
						<td><div class="tips1">规格&nbsp;:</div></td>
						<td><div id="massage_style" class="massage">
								<button class="style_button" name=<%="红" %> onclick="selectStyle(this)" id="choice"></button>
								<button class="style_button" name=<%="蓝" %> onclick="selectStyle(this)"></button>
								<button class="style_button" name=<%="绿"%> onclick="selectStyle(this)"></button>
								
							</div></td>
					</tr>
					<tr id="pro_amount">
						<!-- 商品数量 -->
						<td><div class="tips1">数量&nbsp;:</div></td>
						<td><div id="massage_amount" class="massage">
								<button class="d_button" onclick="_delete()">-</button>
								<% int amount=0; %>
								<span id="amount"><%=amount %></span>
								
								<button class="a_button" onclick="add()">+</button>
							</div></td>
					</tr>
					<tr>
					<td></td>
					<td><button id="add_to_car" onclick="addToCar()">购物车</button><button id="buy">购买</button></td>
					</tr>
				</table>
				
			</div>

		</div>
	</div>
	<script type="text/javascript">
		function selectStyle(select) {
			document.getElementById('choice').id="";
			select.id="choice";
		}
		function _delete() {
			
			document.getElementById('amount').innerHTML="1";
		}
		function add() {
			
			document.getElementById('amount').innerHTML="<%=amount%>";
		}
		
		
		function addToCar(){
			
		}
	
	</script>

</body>
</html>