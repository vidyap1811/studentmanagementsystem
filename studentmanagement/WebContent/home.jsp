<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="LoginPack.*" %>
     <%@ page import="signup.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
ul {
  list-style-type: none;
  margin: 1;
  padding: 1;
}

li {
  display: inline;
}
</style>
</head>
<link rel="stylesheet" href="students.css">

<body class="background1">
<nav class="navbar">
<%@include file="header.jsp"%>
<%String username = (String)session.getAttribute("username");
%>
</nav>
<div align="center">
<h2><font size="20px" color="white">Student Management System</font></h2>
<label><font size="5px" color="white">WELCOME <%=username %></font></label></div>

</body>
</html>