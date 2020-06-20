<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="css/adminPanelData.css" rel="stylesheet">
<title>Add New Data</title>
</head>
<body>
<div id="menu">
<%@include file='./templates/menu.jsp'%>
</div>
<div id="container">
<form action="addQuestion" method="post">
<table>
<tr>
<td><p>Animal Type : </p></td>
<td><input type="text" name="type" placeholder="Animal Type" required></td>
</tr>
<tr>
<td><p>Question : </p></td>
<td><input type="text" name="question" placeholder="Question" required></td>
</tr>
<tr>
<td><p>Answer : </p></td>
<td><input type="text" name="answer" placeholder="Answer" required></td>
</tr>
<tr>
<td><p>Link: </p></td>
<td><input type="text" name="link" placeholder="Link"></td>
</tr>
<tr>
<td colspan="2" >
<input type="submit" value="Submit"  style="width:100%; height:30px">
</td>
</tr>
</table>
</form>
</div>
</body>
</html>