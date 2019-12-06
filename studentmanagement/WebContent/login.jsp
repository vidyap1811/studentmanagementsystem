<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="LoginPack.*" %>
     <%@ page import="signup.*" %>
    
  <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="students.css">

</head>
<body class="background">
<center><h1>LOGIN</h1><br>
<p><font size="15px">Student Management System</font></center></p>
<center>
<form action="processlogin.jsp" method="post">
<table class="loginForm">
<tr><td>
<label for="uname"></label>
<input type="text" placeholder="Username" id="uname" name="username" size=25 style="width:200px;
	height:35px;" required></input><br><br></td></tr>
<tr><td>

<label for="pwd"></label>
<input type="password" placeholder="Password" id="pwd" name="passwd" size=25 style="width:200px;
	height:35px;" required></input><br><br></td></tr>
<tr><td colspan="2" align="center">
<input type="submit" value="Login" style="width:200px;
	height:35px;" class="button"></input>

</td></tr>
</table>

</form>
<div align="center"> 
<input type="button" onclick="location.href='signup.jsp'" value="Signup" style="width:200px;
	height:35px;" class="button"></input>

</div></div></center>
</body>

</html>