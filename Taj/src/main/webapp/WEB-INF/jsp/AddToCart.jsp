<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
</head>
<body>
<%@ include file="static.html" %>
<div class="login-card">
<%
if(session.getAttribute("uname")==null)
{
	response.sendRedirect("login");
}
%>
<h1>Add To Cart</h1>
<p>Welcome ${uname}</p>
<form action="\logout" method="get">
	<input type="submit" value="Sign Out">
</form>
</div>
</body>
</html>