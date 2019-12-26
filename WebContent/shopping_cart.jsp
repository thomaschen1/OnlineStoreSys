<%@page import="cn.thomaschen.entity.Shoppingcart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ page
	import="java.util.*,java.text.SimpleDateFormat,cn.thomaschen.service.ProductBean,cn.thomaschen.entity.Product"%>
		<%@ page import="cn.thomaschen.entity.Product,cn.thomaschen.entity.User" %>
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
int changeid=0;
int amount=0;
if(request.getParameter("amount")!=null){
amount=Integer.valueOf(request.getParameter("amount"));
}
List<Shoppingcart> shoppingcarts=new ArrayList<Shoppingcart>();
if(session.getAttribute("changeid")!=null){
 changeid=(Integer)session.getAttribute("changeid");
Product product=new Product();
product.setId(changeid);
%>
	<jsp:useBean id="productbean" class="cn.thomaschen.service.ProductBean" scope="page">
 		<jsp:setProperty name="productbean" property="product" value="<%=product%>" />
 	</jsp:useBean>
 	<%List<Product> products=productbean.findData();
 	for(Product pro:products){
 		if(pro.getId()==product.getId())
 		product=pro;
 	}
 	product.setAmount(amount);
 	Shoppingcart shoppingcart=new Shoppingcart();
 	shoppingcart.setProduct(product);
 	shoppingcart.setUser(user);
 	%>
	<jsp:useBean id="shoppingcartbean" class="cn.thomaschen.service.ShoppingcarBean" scope="page">
		<jsp:setProperty name="shoppingcartbean" property="shoppingcart" value="<%=shoppingcart%>" />
		<jsp:setProperty name="shoppingcartbean" property="flag" value="insert"/>
	</jsp:useBean>
	<%shoppingcartbean.updateData();
	shoppingcart.setId(0);
	shoppingcarts=shoppingcartbean.findData();
	List<Shoppingcart> reshoppingcarts=new ArrayList<Shoppingcart>();
	for(Shoppingcart shoppingcart2:shoppingcarts){
		if(shoppingcart2.getUser().getId()==user.getId()){
			reshoppingcarts.add(shoppingcart2);
		}
	}
	shoppingcarts=reshoppingcarts;
	System.out.println(shoppingcarts);
	session.setAttribute("shoppingcarts", shoppingcarts);
	session.setAttribute("changeid", null);
		}else{%>
			<jsp:useBean id="shoppingcartbean2" class="cn.thomaschen.service.ShoppingcarBean" scope="page"/>
			<%
			shoppingcarts=shoppingcartbean2.findData();
			List<Shoppingcart> reshoppingcarts=new ArrayList<Shoppingcart>();
			for(Shoppingcart shoppingcart2:shoppingcarts){
				if(shoppingcart2.getUser().getId()==user.getId()){
					reshoppingcarts.add(shoppingcart2);
				}
			}
			shoppingcarts=reshoppingcarts;
			System.out.println(shoppingcarts);
			session.setAttribute("shoppingcarts", shoppingcarts);
		}%>
 
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
							for (Shoppingcart cart:shoppingcarts) {
						%><tr>
							<td align="center" style="width: 100px;height: 100px">
								<div class="product_img">
									<img alt="" src="./img/Upload/<%=cart.getProduct().getImg() %>" style="width: 100%;height: 100%">
								</div>
							</td>
							<td align="center"><%=cart.getProduct().getName()%></td>
							<td align="center"><%=cart.getProduct().getSperification()%></td>
							<td align="center"><%=cart.getProduct().getPrice()%></td>
							<td align="center"><%=cart.getProduct().getAmount()%></td>
							<td align="center"><%=cart.getProduct().getPrice()*cart.getProduct().getAmount()%></td>
							<td align="center"><button>购买</button>
							<button><a href="shopping_delete.jsp?id=<%=cart.getId()%>">删除</a></button></td>
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