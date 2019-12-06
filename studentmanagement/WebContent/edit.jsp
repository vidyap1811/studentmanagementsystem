<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="editstudent.*" %>
        <%@ page import="addstudent.*" %>
          <%@ page import="student.*" %>
            <%@ page import="viewstd.*" %>
        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit student details</title>
<link rel="stylesheet" href="students.css">
<title>Edit Student Details </title>
</head>
<body class="background1"><nav class="navbar">
<%@include file="header.jsp"%>
</nav>
<nav class="studentTable"><nav class="studentTable tbody tr td"><nav class="studentTable thead tr th">
<% 
     String student_id=request.getParameter("student_id");
editstudentPOJO student=editstudentDAO.getStudentByID(student_id);

     %>

<div align="center">
<form action="processeditStudent.jsp" method="post">
<table border="1" color="white">
<thead>
<tr>
<th colspan="2">Student Details</th>
</tr>
</thead>
<tr>
<td ><font color="white">Student ID</font></td>
<td><input type="text" name="student_id" size="20" value="<%=student_id%>" class="productTextField" required></td>
</tr>

<tr>
<td><font color="white">Student Name</font></td>
<td><input type="text" name="student_name" size="20" value="<%=student.getStudent_name()%>" class="productTextField" required></td>
</tr>

<tr>
<td><font color="white">Branch</font></td>
<td><input type="text" name="branch" size="20" value="<%=student.getBranch()%>" class="productTextField" required></td>
</tr>
<tr>
<td><font color="white">Phone no</font></td>
<td><input type="text" name="phone_no" size="20" value="<%=student.getPhone_no()%>" class="productTextField" required></td>
</tr>
</table>

<button class="actionBtn" style="margin-top:10px">Save</button>
</form>
</div>
</body>
</html>