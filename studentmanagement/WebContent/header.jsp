<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     
    <%@ page import="LoginPack.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.tooltip{
position:relative;
display:inline-block;
border-bottom:1px dotted black;
}
.tooltip .tooltiptext{
visibility:hidden;
width:120px;
background-color:grey;
color:#fff;
text-align:center;
padding:5px 0;
border-radius:6px;
position:absolute;
z-index:0;}
.tooltip:hover .tooltiptext{
visibility:visible;
}</style>
</head>
<body>
<%
if(session.getAttribute("username")==null)
{
response.sendRedirect("login.jsp");
}
%>
<table>
<ul>
<li><a class="active" href="home.jsp">HOME</a></li>
<li><a href="addstudent.jsp">ADD STUDENT</a></li>
<li><a href="viewstudent.jsp">VIEW STUDENT</a></li>
<li><a href="searchstudent.jsp">SEARCH STUDENT</a></li>

<li><div align="center" class="tooltip"> &nbsp;&nbsp;&nbsp;USER LOGOUT
<span class="tooltiptext">
<a float:top-right href="login.jsp">LOGOUT</a>
</span>
</div>
</li>
</ul>
</table>
</body>
</html> 