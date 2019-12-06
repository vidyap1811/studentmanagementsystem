<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="viewstd.*" %>
<%@ page import="addstudent.*" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>
<link rel="stylesheet" href="students.css">
</head>
<body  class="background1"><nav class="navbar">
<%@include file="header.jsp"%>
</nav>
<nav class="studentTable"><nav class="studentTable tbody tr td"><nav class="studentTable thead tr th">
<div align="center">

<table align="center" class="StudentTable" bgcolor="white">
<thead>
<tr >
<th>Student ID<font size="5"></th></font>
<th>Student Name<font size="5"></th></font>
<th>Branch<font size="5"></th></font>
<th>Phone Number<font size="5"></th></font>
<th colspan="2">Actions</th>
</tr>
</thead>
<%
List<viewstdPOJO> studentlist=viewstdDAO.getallstudent();%>
<% 
for(viewstdPOJO s:studentlist)
{
%>
	<tr>
	<td><%= s.getStudent_id() %></td>
	<td><%= s.getStudent_name() %></td>
	<td><%= s.getBranch() %></td>
	<td><%= s.getPhone_no() %></td>
	<td><button class="actionBtn" onclick="location.href='edit.jsp?student_id=<%=s.getStudent_id()%>';">Edit</button>  </td>
	<td><button class="actionBtn" onclick="location.href='delete.jsp?student_id=<%=s.getStudent_id()%>';">Delete</button>  </td>
</tr>
<% 	
}
%>
</table></div></nav></nav></nav>
</body>
</html>