<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	
		<div id="massage" align="center">
		<form action="">
			<div>
				用户名：<input type="text" width="50px"><br>
			</div>
			<div>
				姓&nbsp;&nbsp;&nbsp;&nbsp;名：<input type="text" width="50px"><br>
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
		</div>
		</form>
		</div>
		
</body>
</html>