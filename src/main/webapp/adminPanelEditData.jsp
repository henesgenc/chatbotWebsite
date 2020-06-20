<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
input{
width:100%;
}
textarea{
width:100%;
}
</style>
<link href="css/adminPanelData.css" rel="stylesheet">
<title>Edit Data</title>
</head>
<body>
<div id="menu">
<%@include file='./templates/menu.jsp'%>
</div>
<div id="container">
<form action="editData" method="post" name="edit">
<table>
<tr>
<td><p>ID : </p></td>
<td><input type="text" name="id" readonly="readonly" value="<c:out value="${datasets.getId()}"/>"></td>
</tr>
<tr>
<td><p>Animal Type : </p></td>
<td><input type="text" name="type" value="<c:out value="${datasets.getType()}"/>"></td>
</tr>
<tr>
<td><p>Question : </p></td>
<td><input type="text" name="question" value="<c:out value="${datasets.getQuestion()}"/>"></td>
</tr>
<tr>
<td><p>Answer : </p></td>
<td><input type="text" name="answer" value="<c:out value="${datasets.getAnswer()}"/>"></td>
</tr>
<tr>
<td><p>Link : </p></td>
<td><input type="text" name="link" value="<c:out value="${datasets.getLink()}"/>"></td>
</tr>
<tr>
<td colspan="2" >
<input type="submit" value="Submit" style="width:100%; height:30px">
</td>
</tr>
</table>
</form>
</div>
</body>
</html>


