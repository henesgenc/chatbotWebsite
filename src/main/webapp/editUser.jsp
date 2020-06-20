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
<form action="./editUser" method="post" name="edit">
<table>
<tr>
<td><p>ID : </p></td>
<td><input type="text" name="id" readonly="readonly" value="<c:out value="${user.getID()}"/>"></td>
</tr>
<tr>
<td><p>Username : </p></td>
<td><input type="text" name="username" value="<c:out value="${user.getUsername()}"/>"></td>
</tr>
<tr>
<td><p>Password : </p></td>
<td><input type="password" name="password" value="<c:out value="${user.getUser_password()}"/>"></td>
</tr>
<tr>
<td><p>Name : </p></td>
<td><input type="text" name="name" value="<c:out value="${user.getUser_name()}"/>"></td>
</tr>
<tr>
<td><p>Surname : </p></td>
<td><input type="text" name="surname" value="<c:out value="${user.getUser_surname()}"/>"></td>
</tr>
<tr>
<td><p>Birthdate : </p></td>
<td><input type="date" name="birthdate" value="<c:out value="${user.getUser_birthdate()}"/>"></td>
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