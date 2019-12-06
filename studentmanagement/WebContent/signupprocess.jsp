
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="signup.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%


 String user_name=request.getParameter("username");
 String password=request.getParameter("password");
 String confirmpassword=request.getParameter("confirmpassword");
 if(password.equals(confirmpassword))
        {
			signupPOJO signup=new signupPOJO(user_name,password);
	
			int status=signupDAO.Signup(signup);

			if(status==1)
				{
					response.sendRedirect("login.jsp");
				}
			else
				{
						response.sendRedirect("error.jsp");
				}
}
else
{
	response.sendRedirect("signuperror.jsp");
}

%>
</body>
</html>