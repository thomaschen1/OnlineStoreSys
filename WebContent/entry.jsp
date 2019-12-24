<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="cn.thomaschen.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<meta name="description"
	content="particles.js is a lightweight JavaScript library for creating particles.">
<meta name="author" content="Vincent Garreau" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" media="screen" href="css/denglu.css">
</head>
<body >
	<!-- particles.js container -->
	<%!
		boolean decide(String password,String repassword){
		return password.equals(repassword);
	}
	%>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
	   <%
     	request.setCharacterEncoding("utf-8");
     	String phonenumber=request.getParameter("phonenumber");
     	String password=request.getParameter("password");
     	String repassword=request.getParameter("repassword");
     	if(phonenumber!=null&& !phonenumber.isEmpty()&&phonenumber.length()==11&&password !=null&& !password.isEmpty()&& decide(password, repassword)){
     		User user=new User();
     		user.setPhonenumber(request.getParameter("phonenumber"));
     		user.setPassword(request.getParameter("password"));
     		
     		
     %>
     <jsp:useBean id="bean" class="cn.thomaschen.service.UserBean" scope="page">
     	<jsp:setProperty name="bean" property="user" value="<%=user %>" />
     	<jsp:setProperty name="bean" property="order" value="insert"/>
     </jsp:useBean>
     <%
     bean.updataData();
     User reuser=bean.findData();
     session.setAttribute("user", reuser);
     %>
     <jsp:forward page="main.jsp"/>
     <%
     }
     	else{
     %>
   
	<div id="particles-js"
		style="align-items: center; justify-content: center"></div>
	<div class="login-page">
		<form method="post" action="entry.jsp">
		<div id="login_content">
			<div class="login-tit">注册</div>
			<div class="login-input">
				<input id="userName" type="text" name="phonenumber" placeholder="输入账号（手机号）">
			</div>
			<div class="login-input">
				<input id="input_pwd" type="password" name="password" placeholder="输入密码">

			</div>
			<div class="login-input">
				<input id="sure_pwd" type="password" name="repassword" placeholder="确认密码">

			</div>
			<div id="shopkeeperMassage">
				<div class="login-input">
					<input id="shopName" type="text" placeholder="商店名">
				</div>
				<div class="login-input">
					<input id="ID_number" type="number" placeholder="身份证号">

				</div>
				<div class="login-input">
					<textarea style="overflow-x:hidden" placeholder="商店简介"></textarea>
				</div>
				
			</div>

			<div class="login-btn">
				<div class="login-btn-left">
					<span id="login"><input type="submit" value="注册"></span>
				</div>
				<div class="login-btn-right" onClick="changeImg()">
					<img src="img/check.png" alt="" id="picture"> 注册店主
				</div>
			</div>
		</div>
		</form>
	</div>


	<!-- scripts -->
	<script src="js/particles.js"></script>
	<script src="js/app.js"></script>
	<script type="text/javascript">
		var login_content=document.getElementById('login_content');
		var shopkeeperMassage=document.getElementById('shopkeeperMassage');
	
			function changeImg() {
				
				let pic = document.getElementById('picture');
				console.log(pic.src)
				if (pic.getAttribute("src", 2) == "img/check.png") {
					pic.src = "img/checked.png";
					login_content.id = 'login_content_show';
					shopkeeperMassage.id = 'shopkeeperMassage_show';
				} else {
					pic.src = "img/check.png";
					login_content_show.id = 'login_content';
					shopkeeperMassage_show.id = 'shopkeeperMassage';
				}
			}
			
			
		</script>
		<%
     	}
		%>
</body>
</html>