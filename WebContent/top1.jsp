<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"  href="<%=request.getContextPath()%>/css/top1.css" />
		
<title>Insert title here</title>
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
</body>
</html>