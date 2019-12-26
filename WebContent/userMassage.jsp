<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*,cn.thomaschen.entity.User,cn.thomaschen.service.UserBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/userMassage.css" />
<title>个人信息</title>
</head>
<body>
	<div id="box" align="center">
	<div id="head"><strong>个人信息</strong></div>
		
		<%
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		User user = (User)session.getAttribute("user");
		if(name!=null){
			user.setName(request.getParameter("name"));
			user.setNickname(request.getParameter("nickname"));
			user.setSex(request.getParameter("sex"));
			user.setBirthday(request.getParameter("date"));
			System.out.print(request.getParameter("date"));
		%>
		<jsp:useBean id="bean" class="cn.thomaschen.service.UserBean" scope="page">
			<jsp:setProperty name="bean" property="user" value="<%=user%>"/>
			<jsp:setProperty name="bean" property="order" value="update"/>
		</jsp:useBean>
		<%
			bean.updataData();
			user=bean.findData();
			session.setAttribute("user", user);
		}
		%>
		<div id="massage" align="center">
		<form action="userMassage.jsp" method="post">
			<div>
				用户名：
				<input type="text" width="50px" name="nickname" value="<%=user.getNickname()%>"><br>
			</div>
			<div>
				姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" name="name" width="50px" value="<%=user.getName()%>"><br>
			</div>
			<div id="sex">
				<div>性 &nbsp;&nbsp;&nbsp;别：</div>

				<div>
				<label>男生：<input type="radio" name="sex" value="男"></label><br>
				<label>女生：<input type="radio" name="sex" value="女"></label>
				</div>
			</div>
			<div id="birthday">
				出生年日：<input type="date" width="50px" name="date"><br>
			</div>
			
			<div id="address">
				出生年日：<input type="date" width="50px" name="date"><br>
			</div>
			<div id="submit">
			<input type="submit"  id="massage_input" style="width: 100px;background-color: #74aeef;">
		</form>
		
		<form method="post" action="main.jsp">
			<input type="submit"  value="返回" style="width: 100px;background-color: #74aeef;">
		</form>
		
		<form method="post" action="main.jsp?order=true">
			<input type="submit"  value="退出当前账号" style="width: 100px;background-color: #74aeef;">
		</form>
		
		</div>
		</div>
		
</body>
</html>