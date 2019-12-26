<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*,java.text.SimpleDateFormat,cn.thomaschen.service.ProductBean,cn.thomaschen.entity.Product"%>
<%@ page import="cn.thomaschen.entity.Product,cn.thomaschen.entity.User,java.lang.*"%>
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
					<a href="shopping_cart.jsp">购物车</a>|
					<a href="order。jsp">订单管理</a>
				</div>
					<%
						}
					%>				
				</div>
			</div>

		</div>
		
		
	<%
	String amount=(String)request.getParameter("amount");
	session.setAttribute("amount", amount);
	int productid=0;
	if(request.getParameter("id")!=null){
		productid=Integer.parseInt(request.getParameter("id"));
		session.setAttribute("id", productid);
	}
	else{
		productid=(Integer)session.getAttribute("id");
	}
	Product product=new Product();
	product.setId(productid);
	int changeid=productid;
	session.setAttribute("changeid", changeid);
	%>
	<jsp:useBean id="productbean" class="cn.thomaschen.service.ProductBean" scope="page">
 		<jsp:setProperty name="productbean" property="product" value="<%=product%>" />
 	</jsp:useBean>
 	<%List<Product> products=productbean.findData();
 	for(Product pro:products){
 		if(pro.getId()==product.getId())
 		product=pro;
 	}
 	%>
 	
	<span id="bg"><img alt="" src="./img/bg.gif"></span>
	<div id="box">

		<div id="little_box">
			<div id="pro_img">
				<!-- 商品照片 -->
				<img id="showImg" alt="./img/alter/add.jpg" src="img/Upload/<%=product.getImg() %>" style="width: 100%;height: 100%">
			</div>

			<div id="pro_massage">
				<table>
					<tr id="pro_name">
					<form action="shopping_cart.jsp?amount=<%=request.getParameter("name")%>.jsp">
						<!-- 商品名称 -->
						<td><div class="tips1">名称&nbsp;:</div></td>
						<td><div id="massage_name" class="massage"><%=product.getName()%></div></td>

					</tr>
					<tr id="pro_describ">
						<!-- 商品介绍 -->
						<td><div class="tips1">介绍&nbsp;:</div></td>
						<td><div id="massage_describ" class="massage"><%=product.getDescrib()%></div></td>

					</tr>
					<tr id="pro_price">
						<!-- 商品价格：需要随样式的不同而改变 -->
						<td><div class="tips1">价格&nbsp;:</div></td>
						<td><div id="massage_price" class="massage"><%=product.getPrice()%></div></td>
					</tr>
					<tr id="pro_style">
						<!-- 商品样式 -->
						<td><div class="tips1">规格&nbsp;:</div></td>
						<td><div id="massage_style" class="massage">
								<%=product.getSperification()%>
							</div></td>
					</tr>
					<tr id="pro_price">
						<!-- 商品价格：需要随样式的不同而改变 -->
						<td><div class="tips1">库存&nbsp;:</div></td>
						<td><div id="massage_price" class="massage"><%=product.getAmount()%></div></td>
					</tr>
					<tr id="pro_amount">
					
						<!-- 商品数量 -->
						<td><div class="tips1">数量&nbsp;:</div></td>
						<td><div id="massage_amount" class="massage">
								<span id="amount"><input type="text" style="height: 20px;width: 52px;" name="amount"></span>
	
							</div></td>
					</tr>
					<tr>
					<td></td>
					<td>
					<button id="add_to_car">购物车</button>
			</form>
					<button type="submit" id="buy" >购买</button>
					</td>
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
		
		function addToCar(){
			
		}
	
	</script>

</body>
</html>