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
    <title>Pet Chat Bot - <c:out value="${menu}"/></title>
	<style type="text/css">
		.ulClass{
			background: #ece5dd;
			color: black;
			text-decoration: none;
			padding: 2% 20px 2% 20px;
			border-radius: 5px;
			-webkit-user-select: none;  /* Chrome all / Safari all */
			-moz-user-select: none;     /* Firefox all */
			-ms-user-select: none;      /* IE 10+ */
			user-select: none;          /* Likely future */ 
		}
		.ulClass:hover{
			background: #FF4136 ;
			color: white;
			text-decoration: none;
		}
	</style>
  </head>

  <body style="overflow:auto;  background:#EAEDED;">
	<%@include file='./templates/navbar.jsp'%>    
    <!-- Page Content -->
    <div class="container">
		<%@include file='./templates/homemenu.jsp'%>
		<div class="content">
		<c:forEach items ="${menus}" var="value">
			<c:if test="${value.getUppermenu()==menu}">
				<a href="./menuContent-<c:out value="${value.getId()}"/>"><ul class="ulClass">${value.getMenu()}</ul></a>
			</c:if>
		</c:forEach>
		</div>    
   </div>
   <%@include file='./templates/chatbox.jsp'%>
</body>
</html>