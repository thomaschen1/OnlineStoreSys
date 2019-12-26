<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*,java.text.SimpleDateFormat,cn.thomaschen.service.ProductBean,cn.thomaschen.entity.Product"%>
		<%@ page import="cn.thomaschen.entity.Product,cn.thomaschen.entity.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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


	<div id="box">
		<div id="little_box" style="height: auto;">
			<div style="font-size: 60px; color: #6a6a6a; font-family: cursive;"
				align="center"><%="网店名称"%></div>
			<div id="top4"  align="center">
				<div id="top4_left">&nbsp;&nbsp;上架商品</div>
			</div>
			<%List<Product> products=(List<Product>)session.getAttribute("products"); 
			if(products==null){
				ProductBean productbean=new ProductBean();
				products=productbean.findData();
			}
			%>
			<div id="top5" style="height: auto; overflow: auto;">
				<!-- 热门商品兰 -->
				<!-- 通过Product类传入href、img、商品名称、价格等 -->
				<%
				for(Product pro:products){%>
					<div id="">
						<img src="img/Upload/<%=pro.getImg()%>">
						<p><%=pro.getName()%></p >
						<a href="Product_alter2.jsp?id=<%=pro.getId()%>"><button class="edit">编辑</button/></a>
						<a href="Product_delete.jsp?id=<%=pro.getId()%>"><button class="edit">删除</button></a>
					</div>
				 <%}%>
	
	
				<a href="Product_alter.jsp">
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