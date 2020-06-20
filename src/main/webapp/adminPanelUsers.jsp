<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<link href="css/adminPanelData.css" rel="stylesheet">
<style>
	input{
		width:100%;
	}
	textarea{
		width:100%;
	}
</style>
<title>Admin Panel Users</title>
</head>
<body>
<div id="menu">
<%@include file='./templates/menu.jsp'%>
</div>
<div id="container">
<table style="margin-right: 50px; margin-bottom: 50px">
<tr style="font-weight: bold;">

<td>ID</td><td>Username</td><td>Password</td><td>Name</td><td>Surname</td><td>Birthdate</td>
</tr>
<c:forEach items ="${users}" var="value">
<tr>
<td><c:out value="${value.getID()}"/></td>
<td><c:out value="${value.getUsername()}"/></td>
<td>*********</td>
<td><c:out value="${value.getUser_name()}"/></td>
<td><c:out value="${value.getUser_surname()}"/></td>
<td><c:out value="${value.getUser_birthdate()}"/></td>
<td><a href="./editUser<c:out value="${value.getID()}"/>">Edit</a></td>
<td><a href="./deleteUser<c:out value="${value.getID()}"/>">Delete</a></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>
