<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
</head>
<body>
<script>
function validation()
{
	var a = document.forms["Form"]["uname"].value;
	var b = document.forms["Form"]["pass"].value;
	var c = document.forms["Form"]["pass1"].value;
	var d = document.forms["Form"]["email"].value;
	var e = document.forms["Form"]["mobile"].value;
	var f = document.forms["Form"]["address"].value;
	if(a == "" || b == "" || c == "" || d == "" || e == "" || f == "")
	{
		alert("Please Fill All Required Fields!");
		return false;
	}
	else
	{
		if(b != c)
		{
			alert("Passwords not Matched!");
			return false;
		}
	}
}
</script>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/about">Taj</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">Home</a></li>
      <li><a href="/service">Service</a></li>
      <li><a href="/about">About</a></li>
      <li><a href="/contact">Contact</a></li>
    </ul>
    <form class="navbar-form navbar-left" action="/search">
      <div class="form-group">
        	<input type="text" id="ex1" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">Submit</button>
    </form>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
	</div>    
  </div>
</nav>
<div class="login-card">
    <h1>Sign-Up</h1><br>
	<form method="post" name="Form" onsubmit="return validation()" action="addUser">
		<input type="text" name="uname" placeholder="Username">
		<input type="password" name="pass" placeholder="Password">
		<input type="password" name="pass1" placeholder="Re-Password" onfocusout="checkPassword()">
		<input type="text" name="email" placeholder="Email" onfocusout="checkEmpty()">
		<input type="text" name="mobile" placeholder="Mobile No" onfocusout="checkEmpty()">
		<input type="text" name="address" placeholder="Address" onfocusout="checkEmpty()">
		<input type="submit" name="register" class="login login-submit" value="Sign Up">
	</form>
	<div class="login-help">
		<a href="/login">Sign In</a>
		${uname}
	</div>
</div>
</body>
</html>