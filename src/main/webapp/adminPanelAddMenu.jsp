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
<form action="addMenu" method="post">
<table>
<tr>
<td><p>Upper Menu select : </p></td>
<td><select id="uppermenu" name="uppermenu">
  <option value="Animals">Animals</option>
  <option value="Animal Treatments">Animal Treatments</option>
  <option value="Vets">Vets</option>
</select></td>
</tr>
<tr>
<td><p>Menu name : </p></td>
<td><input type="text" name="menu" placeholder="Menu" required></td>
</tr>
<tr>
<td><p>Content : </p></td>
<td><input type="text" name="content" placeholder="Content" required></td>
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