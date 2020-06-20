<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
td{
border:1px solid;
padding: 5px;
text-align:center;
}
#menu{
width:10%;
position:fixed;
top:0px;
left:0px;
height:100%;
background-color:#EAEDED;
padding:50px;
}
#menu a{
text-decoration:none;
color:black;
font-size:x-large;
}
#menu a:hover{
color:blue;
}
#container{
position:absolute;
left:19%;
top:5%;
}
</style>
<title>EditUser</title>
</head>
<body>
<div id="menu">
<%@include file='./templates/menu.jsp'%>
</div>
<div id="container">
<form action="./editMenu" method="post" name="edit">
<table>
<tr>
<td><p>ID : </p></td>
<td><input type="text" name="id" readonly="readonly" value="<c:out value="${menu.getId()}"/>"></td>
</tr>
<tr>
<td><p>Menu : </p></td>
<td><input type="text" name="menu" value="<c:out value="${menu.getMenu()}"/>"></td>
</tr>
<tr>
<td><p>Upper Menu : </p></td>
<td><input type="text" name="uppermenu" value="<c:out value="${menu.getUppermenu()}"/>"></td>
</tr>
<tr>
<td><p>Content : </p></td>
<td><input type="text" name="content" value="<c:out value="${menu.getContent()}"/>"></td>
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