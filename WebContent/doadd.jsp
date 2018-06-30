<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="chk2" class="mypack.Student" scope="session"/>
<jsp:setProperty property="*" name="chk2"/>
<%
if(chk2.addRecord())
{
	session.setAttribute("msg", "New record added");
	session.setAttribute("fname","add.jsp");
	response.sendRedirect("success.jsp");
}
else
{
	session.setAttribute("msg", "There is a problem");
	session.setAttribute("fname","add.jsp");
	response.sendRedirect("error.jsp");

}

%>
</body>
</html>