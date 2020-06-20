<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href="css/index_style.css" rel="stylesheet">
	<link href="css/homepage.css" rel="stylesheet">
    <title>Pet Chat Bot - Homepage</title>

  </head>

  <body style="overflow:auto; background:#EAEDED;">
	<%@include file='./templates/navbar.jsp'%>    
    <!-- Page Content -->
    <div class="container">
		<%@include file='./templates/homemenu.jsp'%>
		<div class="content">
			<p style="font-weight: bold; font-size:20pt"><c:out value="${menu.getMenu()}"/></p>
			<span>
				<c:out value="${menu.getContent()}" escapeXml="false"/>
			</span>
		</div>    
   </div>
   <%@include file='./templates/chatbox.jsp'%>
</body>
</html>