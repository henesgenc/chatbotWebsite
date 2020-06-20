<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<link href="css/adminPanelData.css" rel="stylesheet">
<title>Admin Panel Datasets</title>
</head>
<body>
<div id="menu">
<%@include file='./templates/menu.jsp'%>
</div>
<div id="container">
<table style="margin-right: 50px; margin-bottom: 50px">
<tr style="font-weight: bold;">
<td style="width:5%;">ID</td><td>Animal</td><td>Question</td><td>Answer</td><td>Link</td>
</tr>
<c:forEach items ="${datasets}" var="value">
<tr>
<td style="width:5%;"><c:out value = "${value.getId()}"/></td>
<td><c:out value = "${value.getType()}"/></td>
<td><c:out value = "${value.getQuestion()}"/></td>
<td><c:out value = "${value.getAnswer()}"/></td>
<td><c:out value = "${value.getLink()}"/></td>
<td><a href="./editData<c:out value = "${value.getId()}"/>">Edit</a></td>
<td><a href="./deleteData<c:out value = "${value.getId()}"/>">Delete</a></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>