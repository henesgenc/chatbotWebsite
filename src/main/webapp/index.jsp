<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"
    %>
<!doctype html>
<html>
<head>
<link href="css/index_style.css" rel="stylesheet">
<meta charset="utf-8">
<title>Pet Chat Bot</title>
<style>
	.backgroundImg{
		position: absolute;
		width:100%;
		height:100vh;
		top:0;
		left:0;
		z-index:-1000;
	}
	.backgroundImg img{
		width:100%;
		height:100vh;
		filter: blur(8px);
  		-webkit-filter: blur(8px);
	}
	.welcomeText{
		position: absolute;
		width:100%;
		top:46%;
		font-size: 41pt;
		color:white;
		text-align:center;
		font-family: cursive;
		text-shadow: 2px 2px;
	}
</style>
</head>
<body>	
	<div class="backgroundImg">
		<img src="./inner-images/mainpage.jpg">
	</div>
	<div class="welcomeText">WELCOME TO THE PETS CHATBOT</div>
	<div id="LoginRegister" style="color:white;">
		<% 
		if(session.getAttribute("username")==null){ %>
			<a href="./login">Login</a>
			<a href="./register">Register</a>
		<%} else{ %>
  	<p style="color:white;">
<%= request.getSession().getAttribute("username") %>
<a href="./logout"><button class="Logout">Logout</button></a>
<%}  %>
</p>
	</div>
	<a href="#"><img src="./inner-images/chatbot_logo_white.png" id="logo"></a>
	<a id="goto" href="./homepage" style="display:inline;">
		<button id="gotoButton">
			<img src="./inner-images/button_icon.png" id="button_icon" />
			&nbsp;&nbsp;Go to Website
		</button>
		</a>
	<%@include file='./templates/chatbox.jsp'%>
</body>
</html>
