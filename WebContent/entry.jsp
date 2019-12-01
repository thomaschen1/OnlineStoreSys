<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
		<meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
		<meta name="author" content="Vincent Garreau" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<link rel="stylesheet" media="screen" href="css/denglu.css">
</head>
<body>
	<!-- particles.js container -->
		<div id="particles-js" style="display: flex;align-items: center;justify-content: center">
		</div>
		<div class="login-page">
			<div class="login-content">
				<div class="login-tit">登录</div>
				<div class="login-input">
					<input id="userName" type="text" placeholder="用户名">
				</div>
				<div class="login-input">
					<input id="password" type="password" placeholder="密码">
					
				</div>
				<div class="login-btn">
					<div class="login-btn-left">
						<span id="login">登录</span>
					</div>
					<div class="login-btn-right" onClick="changeImg()">
						<img src="img/check.png" alt="" id="picture"> 记住密码
					</div>
				</div>
			</div>
		</div>

		<script src="./js/jquery.min.js"></script>
		<script src="./js/bootstrap.min.js"></script>
		<!-- 自定义前后端交互代码 -->
		<script src="jquerys/sign-login.js"></script>
		<!-- scripts -->
		<script src="js/particles.js"></script>
		<script src="js/app.js"></script>
		<script>
			function changeImg() {
				let pic = document.getElementById('picture');
				console.log(pic.src)
				if (pic.getAttribute("src", 2) == "img/check.png") {
					pic.src = "img/checked.png"
				} else {
					pic.src = "img/check.png"
				}
			}
		</script>
</body>
</html>