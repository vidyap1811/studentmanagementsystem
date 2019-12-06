<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="addstudent.*" %>
     <%@ page import="viewstd.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String student_id=request.getParameter("stdID");
String student_name=request.getParameter("stdName");
String branch=request.getParameter("branch");
String phone_no=request.getParameter("phoneno");


addstudentPOJO student=new addstudentPOJO(student_id,student_name,branch,phone_no);

int status=addstudentDAO.addStudent(student);

if(status==1)
	

{
	response.sendRedirect("viewstudent.jsp");
}
else
	
{
	response.sendRedirect("error1.jsp");
}



%>
</body>
</html>