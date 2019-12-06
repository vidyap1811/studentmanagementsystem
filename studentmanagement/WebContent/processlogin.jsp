<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="LoginPack.*" %>
  <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="students.css">
</head>
<body>

<%


String user_name=request.getParameter("username");
String password=request.getParameter("passwd");

if(LoginDAO.isUserValid(new LoginPOJO(user_name,password)))
{
	 session.setAttribute("username",user_name);
	
	session.setMaxInactiveInterval(60);
	response.sendRedirect("home.jsp");
}
else
{
	
	response.sendRedirect("error.jsp");
	
	
}%>
</body>
</html>