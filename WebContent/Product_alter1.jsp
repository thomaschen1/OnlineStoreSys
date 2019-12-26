<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="cn.thomaschen.entity.Product,cn.thomaschen.entity.User" %>
	<%@ page import="java.util.*"%>
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
<%
	request.setCharacterEncoding("utf-8");
	User user=new User();
	String phonenumber=request.getParameter("phonenumber");
	String password=request.getParameter("password");
	boolean order=Boolean.parseBoolean(request.getParameter("order"));
	if(order){
		user=null;
	}
	else if(phonenumber!=null&&password!=null){
		user.setPhonenumber(phonenumber);
		user.setPassword(password);%>
		<jsp:useBean id="bean" class="cn.thomaschen.service.UserBean" scope="page"/>
		<%user=bean.judge(user);
				if(user==null){%>
		<script type="text/javascript" language="javascript">
		alert("密码错误");  
		</script>	
		<%}}
	else{user=(User)session.getAttribute("user");}%>
<body onload="a()">

		<span id="bg"><img alt="" src="./img/bg.gif"></span>

		<div id="top1" align="center">
			<!-- 最上面的信息，显示登录注册，可在此切换到登录注册画面-->
			<div id="whith">
				<div id="top1_left">
					<a href="main.jsp">回到主页&nbsp;&nbsp;</a>
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
					<div id="top1_right">
					<a href="userMassage.jsp">个人中心</a>|
					<a href="shopping。jsp">购物车</a>|
					<a href="order。jsp">订单管理</a>
				</div>
					<%
						}
					%>				
				</div>
			</div>

		</div>
	
	
	<%
		String productname=request.getParameter("productname");
		String productIntrod=request.getParameter("productIntrod");
		String unitprice=request.getParameter("unitprice");
		String sperification=request.getParameter("sperification");
		String  number=request.getParameter("number");
		int productid=0;
		if(request.getParameter("id")!=null){
		productid=Integer.parseInt(request.getParameter("id"));
		}
		Product product=new Product();
 		if(productname!=null&& !productname.isEmpty()&&
 				productIntrod !=null&& !productIntrod.isEmpty()&&
 				unitprice!=null&&
 				sperification!=null&&!sperification.isEmpty()&&
 				number!=null){
 				product.setName(productname);
 				product.setDescrib(productIntrod);
 				product.setPrice(Double.parseDouble(unitprice));
 				product.setSperification(sperification);
 				product.setAmount(Integer.parseInt(number));
 				product.setImg("不知道");%>
 	<jsp:useBean id="productbean" class="cn.thomaschen.service.ProductBean" scope="page">
     	<jsp:setProperty name="productbean" property="product" value="<%=product%>" />
     	<jsp:setProperty name="productbean" property="flag" value="insert"/>
     </jsp:useBean>
	<%
		productbean.updateData();
		product.setId(0);
		productbean.setProduct(product);
		List<Product> products=productbean.findData();
		session.setAttribute("products", products);
	%>
	<jsp:forward page="store.jsp"/>
	<%}
 		if(productid>0){
 			List<Product> products=(List<Product>)session.getAttribute("products");
 			for(Product pro:products){
 				if(pro.getId()==productid)
 					product=pro;
 				break;
 			}
 		}
 	%>

	<span id="bg"><img alt="" src="./img/bg.gif"></span>
	<div id="box">

		<div id="little_box">
			<div id="pro_img" style="background: url('./img/alter/add.jpg');background-repeat: no-repeat;">
				<!-- 商品照片 -->
				
			</div>

			<div id="pro_massage">
				<form action="Product_alter1.jsp" method="post">
					<table>
						<tr id="pro_name">
							<!-- 商品名称 -->
							<td><div class="tips1">商品名称&nbsp;:</div></td>
							<td><div id="massage_name" class="massage"><input name="productname" type="text" value="<%=product.getName()%>"></div></td>

						</tr>
						<tr id="pro_describ">
							<!-- 商品介绍 -->
							<td><div class="tips1">商品介绍&nbsp;:</div></td>
							<td><div id="massage_describ" class="massage">
							<textarea name="productIntrod" style="overflow-x:hidden;width: 300px;height: 50px" value="<%=product.getDescrib()%>">
							</textarea></div></td>

						</tr>
						<tr id="pro_price">
							<!-- 商品价格：需要随样式的不同而改变 -->
							<td><div class="tips1">价格(元)&nbsp;:</div></td>
							<td><div id="massage_price" class="massage"><input name="unitprice" type="number" value="<%=product.getPrice()%>"></div></td>
						</tr>
						<tr id="pro_style">
							<!-- 商品样式 -->
							<td><div class="tips1">商品规格&nbsp;:</div></td>
							<td><div id="massage_style" class="massage">
								<input type="text" name="sperification" value="<%=product.getSperification()%>">
								</div></td>
						</tr>
						<tr id="pro_amount">
							<!-- 商品数量 -->
							<td><div class="tips1">商品数量&nbsp;:</div></td>
							<td><div id="massage_amount" class="massage">
									<span id="amount"><input type="number" style="height: 20px;width: 100px;" name="number" value="<%=product.getAmount()%>"></span>
	
								</div></td>
						</tr>
						<tr>
							<td></td>
							<td><button type="submit" id="add_to_car" >保存</button>
				</form>
							<form method="post" action="store.jsp">
								<button id="buy" onclick="">返回</button></td>
							</form>
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
		
	</script>
</body>
</html>