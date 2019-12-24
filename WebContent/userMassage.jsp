<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.util.*,cn.thomaschen.entity.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/userMassage.css" />
<title>Insert title here</title>
</head>
<body>
	<div id="box" align="center">
	<div id="head"><strong>个人信息</strong></div>
		<%!User user=new User(); 
			
		%>
		<%
		user.setNickname("");
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		if(name!=null){
			user=(User)session.getAttribute("user");
			user.setName(request.getParameter("name"));
			user.setNickname(request.getParameter("nickname"));
		%>
		<jsp:useBean id="bean" class="cn.thomaschen.service.UserBean" scope="page">
			<jsp:setProperty name="bean" property="user" value="<%=user%>"/>
			<jsp:setProperty name="bean" property="order" value="update"/>
		</jsp:useBean>
		<%
			bean.updataData();
			User user=bean.findData();
			session.setAttribute("user", user);
		%>
		<jsp:forward page="userMassage.jsp"/>
		<%
		}else{
			user=(User)session.getAttribute("user");
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
				出生年日：<input type="date" width="50px"><br>
			</div>
			<div id="submit">
			<input type="submit" name="massage_input" id="massage_input" value="确   定">
		</form>
		<form method="post" action="main.jsp">
			 <%session.setAttribute("user", null); %>
			<input type="submit"  value="退出">
		</form>
		</div>
		</div>
		
</body>
</html>