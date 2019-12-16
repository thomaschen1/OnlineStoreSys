<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/top1.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/product_alter.css" />
<title>商品维护</title>
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
			<div id="pro_img" style="background: url('./img/alter/add.jpg');background-repeat: no-repeat;">
				<!-- 商品照片 -->
				
			</div>

			<div id="pro_massage">
				<form action="">
					<table>
						<tr id="pro_name">
							<!-- 商品名称 -->
							<td><div class="tips1">商品名称&nbsp;:</div></td>
							<td><div id="massage_name" class="massage"><input type="text"></div></td>

						</tr>
						<tr id="pro_describ">
							<!-- 商品介绍 -->
							<td><div class="tips1">商品介绍&nbsp;:</div></td>
							<td><div id="massage_describ" class="massage"><textarea style="overflow-x:hidden;width: 300px;height: 50px"></textarea></div></td>

						</tr>
						<tr id="pro_price">
							<!-- 商品价格：需要随样式的不同而改变 -->
							<td><div class="tips1">价格(元)&nbsp;:</div></td>
							<td><div id="massage_price" class="massage"><input type="number"></div></td>
						</tr>
						<tr id="pro_style">
							<!-- 商品样式 -->
							<td><div class="tips1">商品规格&nbsp;:</div></td>
							<td><div id="massage_style" class="massage">
									<button type="button" class="style_button" 
									style="background: url('./img/alter/add.jpg') ;background-size: cover;" 
									name=<%="Product.getStyle()"%>
										onclick="selectStyle(this)" id="choice"></button>

								</div></td>
						</tr>
						<tr id="pro_amount">
							<!-- 商品数量 -->
							<td><div class="tips1">商品数量&nbsp;:</div></td>
							<td><div id="massage_amount" class="massage">
									<span id="amount"><input type="number" style="height: 20px;width: 100px;"></span>
	
								</div></td>
						</tr>
						<tr>
							<td></td>
							<td><button type="submit" id="add_to_car" >保存</button>
								<button id="buy" onclick="">退出</button></td>
						</tr>
					</table>
				</form>
			</div>

		</div>
	</div>
	<script type="text/javascript">
		function selectStyle(select) {
			document.getElementById('choice').id="";
			select.id="choice";
		}
		
	</script>

</body>
</body>
</html>