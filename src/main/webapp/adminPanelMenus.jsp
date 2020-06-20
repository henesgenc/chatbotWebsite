<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<link href="css/adminPanelData.css" rel="stylesheet">
<title>Admin Panel Menus</title>
</head>
<body>
<div id="menu">
<%@include file='./templates/menu.jsp'%>
</div>
<div id="container">
<table style="margin-right: 50px; margin-bottom: 50px">
<tr style="font-weight: bold;">
<td style="width:5%;">ID</td><td>Menu</td><td>UpperMenu</td><td>Content</td>
</tr>
<c:forEach items ="${menus}" var="value">
<tr>
<td style="width:5%;"><c:out value = "${value.getId()}"/></td>
<td><c:out value = "${value.getMenu()}"/></td>
<td><c:out value = "${value.getUppermenu()}"/></td>
<td style="width:50%;"><c:out value = "${value.getContent()}" escapeXml="false"/></td>
<td><a href="./editMenu<c:out value = "${value.getId()}"/>">Edit</a></td>
<td><a href="./deleteMenu<c:out value = "${value.getId()}"/>">Delete</a></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>