<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="deletestudent.*" %>
     <%@ page import="viewstd.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Student Details </title>
<link rel="stylesheet" href="students.css">
</head>
<body class="background1">
<nav class="navbar">
<%@include file="header.jsp"%>
<%
String student_id=request.getParameter("student_id");

int status=deletestudentDAO.deleteStudent(student_id);

if(status==1)
{
	response.sendRedirect("viewstudent.jsp");
}
else
{
	response.sendRedirect("error2.jsp");
}
%></nav>
</body>
</html>