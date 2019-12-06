<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="searchstudent.*" %>
     <%@ page import="editstudent.*" %>
     <%@ page import="viewstd.*" %>
     <%@ page import="deletestudent.*" %>
  <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Student</title>
<link rel="stylesheet" href="students.css">
</head>
<body  class="background1"><center><nav class="navbar">
<%@include file="header.jsp"%>
</nav>
<nav class="searchTextField">

<nav class="actionBtn:hover"><nav class="studentTable"><nav class="studentTable tbody tr td"><nav class="studentTable thead tr th">
<div align="center"> 
	<form action="searchstudent.jsp" >
	<label>Enter Student ID: </label> 
		<input type="text" name="student_id" size="25" class="searchTextField"/> 
		<button class="actionBtn">Search</button> 
</form>		
 </div> 
  
<table align="center" class="studentTable" > 
<thead> 
			<tr> 
			<th>Student ID</th> 
				<th>Student Name</th> 
			<th>Branch</th> 
				<th>Phone No</th> 
			<th colspan="2">Actions</th> 
		</tr>  
	</thead> 
	<% 			String student_id = request.getParameter("student_id"); 
			if(student_id != null) 
 			{ 
				searchstudentPOJO s = searchstudentDAO.getstudentById(student_id); 
		 
				if(s != null) 
			      { 
				    %>
			         <tr bgcolor="white" >
						<td><%=s.getStudent_id()%></td> 
 						<td><%=s.getStudent_name()%></td>
 						<td><%=s.getBranch()%></td>
 						<td><%=s.getPhone_no()%></td>
						<td><button class="actionBtn" onclick="location.href='edit.jsp?student_id=<%=s.getStudent_id()%>';">Edit</button>  </td>
						<td><button class="actionBtn" onclick="location.href='delete.jsp?student_id=<%=s.getStudent_id()%>';">Delete</button>  </td>
					</tr> 
					<%
				} 
			 else 
				{ 
						%> 
			 			<tr> 
								<td colspan="5">No record to display</td> 
							</tr> 
						<%  
				} 
			} 
				else  
				 			{ 
				 		%> 
				 			<tr> 
			 				<td colspan="5">No record to display</td> 
				 			</tr> 
				 		<%  
			 			} 
			
				 		
    
%>
</table>
</nav></nav></nav></nav></nav>
</center>
</body>
</html>