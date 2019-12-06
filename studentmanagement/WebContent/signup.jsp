<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="LoginPack.*" %>
    
  <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up Page</title>
<link rel="stylesheet" href="students.css">
 <h1><center>Sign Up</center></h1>
</head>

<body class="background">

<form action="signupprocess.jsp" >
  <center >
   
    <p><font size="5px">Please fill in this form to create an account.</font></p>
    <hr>

    <label for="user_name"></label><br>
    <input type="text" placeholder="Username" name="username" size=25 style="width:200px;
	height:35px;" required><br><br>

    <label for="password"></label><br>
    <input type="password" placeholder="Password" name="password" size=25 style="width:200px;
	height:35px;" required><br><br>
 
 	<label for="confirmpassword"></label><br>
    <input type="password" placeholder="Confirm Password" name="confirmpassword" size=25 style="width:200px;
	height:35px;" required><br><br>

    <div >
 
      <button type="submit" class="button" style="width:200px;
	height:35px;" >Sign Up</button>
    </div>
    <br>
   <input type="button" onclick="location.href='login.jsp'" value="Login" style="width:200px;
	height:35px;" class="button"></input>
  </center>
</form>

</body>
</html>