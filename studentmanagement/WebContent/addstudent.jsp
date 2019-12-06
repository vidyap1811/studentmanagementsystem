<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="addstudent.*" %>
     <%@ page import="viewstd.*" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student Details</title>
<link rel="stylesheet" href="students.css">
</head>
<body class="background1">
<nav class="navbar">
<%@include file="header.jsp"%>
</nav>
<nav class="studentTable"><nav class="studentTable tbody tr td"><nav class="studentTable thead tr th">
<center>

<div align="center">
<form action="processAddStudent.jsp" method="post">
<table border="1" class="StudentTable" color="white">
<thead>
<tr>
<th colspan="2"><font size="5">Student Details</font></th>
</tr>
</thead>
<tr>
<td><font color="white" size="3">Student ID</font></td>
<td><input type="text" name="stdID" size="46" height="10" required></td>
</tr>

<tr>
<td><font color="white" size="3">Student Name</font></td>
<td><input type="text" name="stdName" size="46" required></td>
</tr>

<tr>
<td><font color="white" size="3">Branch</font></td>
<td><input type="text" name="branch" size="46" required></td>
</tr>
<tr>
<td><font color="white" size="3">Phone no</font></td>
<td><input type="text" name="phoneno" size="46" required></td>
</tr>
</table>

<button class="actionBtn" style="margin-top:10px">Add</button>
</form>
</div>
</center>
</body>
</html>