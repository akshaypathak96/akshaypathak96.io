<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="chk5" class="mypack.Student" scope="session"/>
<jsp:setProperty property="*" name="chk5"/>
<%
if(chk5.deleteRec())
{
session.setAttribute("msg","Record Deleted");
session.setAttribute("fname","find.jsp");
response.sendRedirect("success.jsp");
}
else
{
	session.setAttribute("msg","There is some problem");
	session.setAttribute("fname","delete.jsp");
	response.sendRedirect("error.jsp");
}
%>
</body>
</html>