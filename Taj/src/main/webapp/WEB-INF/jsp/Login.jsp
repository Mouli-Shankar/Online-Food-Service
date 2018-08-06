<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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
	if(a == "" || b == "")
	{
		alert("Please Fill All Required Fields!");
		return false;
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
    <h1>Sign-in</h1><br>
	<form method="post" name="Form" onsubmit="return validation()" action="checkLogin">
		<input type="text" name="uname" placeholder="Username">
		<input type="password" name="pass" placeholder="Password">
		<input type="submit" name="login" class="login login-submit" value="login">
	</form>
	<div class="login-help">
		<a href="/register">Sign Up</a>
	</div>
</div>

<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog modal-sm">

      <div class="modal-content">
        <div class="modal-header" style="text-align: center;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"><span class="glyphicon glyphicon-user"></span> Sign In</h4>
        </div>
        <div class="modal-body">
			<div class="login-card">
				<form method="post" name="Form" onsubmit="return validation()" action="checkLogin">
					<input type="text" name="uname" placeholder="Username">
					<input type="password" name="pass" placeholder="Password">
					<input type="submit" name="login" class="login login-submit" value="login">
				</form>
				<div class="login-help">
					<a href="/register">Sign Up</a>
				</div>
			</div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>

	</div>
</div>

</body>
</html>