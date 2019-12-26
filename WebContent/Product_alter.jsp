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
<body >

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
	
	
	<%session.setAttribute("page", "Product_alter.jsp");
	String productname,productIntrod,unitprice,sperification,number;
	if(request.getAttribute("productname")!=null) {	
		productname=request.getAttribute("productname").toString();
		productIntrod=request.getAttribute("productIntrod").toString();
		unitprice=request.getAttribute("unitprice").toString();
		sperification=request.getAttribute("sperification").toString();
		number=request.getAttribute("number").toString();
	}else {
		productname=null;
		productIntrod=null;
		unitprice=null;
		sperification=null;
		number=null;
	}
		
		Product product=new Product(0,"",0,"","",0,"");
		System.out.println("成功刷新");
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
 				product.setImg(request.getAttribute("filename").toString());%>
 	<jsp:useBean id="productbean" class="cn.thomaschen.service.ProductBean" scope="page">
     	<jsp:setProperty name="productbean" property="product" value="<%=product%>" />
     	<jsp:setProperty name="productbean" property="flag" value="insert"/>
     </jsp:useBean>
	<%
		System.out.println("成功刷新");
		productbean.updateData();
		product.setId(0);
		productbean.setProduct(product);
		List<Product> products=productbean.findData();
		session.setAttribute("products", products);
		response.sendRedirect(request.getContextPath()+"/store.jsp");
 		} 
	%>
	
	

	<span id="bg"><img alt="" src="./img/bg.gif"></span>
	<div id="box">

		<div id="little_box">
		
			<form action="UploadServlet" method="post" enctype="multipart/form-data">
				<div id="pro_img"
					style="background: #ffffff; background-repeat: no-repeat;" align="center">
					<img id="showImg" alt="./img/alter/add.jpg" src="./img/alter/add.jpg" style="width: 100%;height: 100%">
					<input type="file" name="file" style="width: 525px;height:525px;position: relative;top: -525px;opacity: 0;" 
							onchange="upload(this)">
				<script type="text/javascript">
				function upload(obj){
			        //获取展示图片的区域
			        var img = document.getElementById("showImg"); 
			        //获取文件对象
			        let file = obj.files[0];
			        //获取文件阅读器
			        let reader = new FileReader();
			        reader.readAsDataURL(file);
			        reader.onload = function(){
			            //给img的src设置图片url
			            img.setAttribute("src", this.result);
			        }
			    }

				</script>
				</div>
			


			<div id="pro_massage">
				
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