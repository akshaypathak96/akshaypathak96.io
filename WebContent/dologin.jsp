<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checking login</title>
</head>
<body>
<jsp:useBean id="chk1" class="mypack.login" scope="session"/>
<jsp:setProperty property="*" name="chk1"/>
<%
if(chk1.checkLogin())
{
session.setAttribute("user", chk1.getTxtuser());
response.sendRedirect("student.jsp");
}
else
{
	session.setAttribute("msg", "Invalid username or password");
	session.setAttribute("fname","login.jsp");
	response.sendRedirect("error.jsp");
}
	
%>
</body>
</html>