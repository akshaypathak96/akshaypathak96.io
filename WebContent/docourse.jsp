<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="chk6" class="mypack.Admin" scope="session"/>
<jsp:setProperty property="*" name="chk6"/>
<%
if(chk6.addCourse())
{
	session.setAttribute("msg", "New course added");
	session.setAttribute("fname","course.jsp");
	response.sendRedirect("success.jsp");
}
else
{
	session.setAttribute("msg", "There is a problem");
	session.setAttribute("fname","course.jsp");
	response.sendRedirect("error.jsp");

}

%>
</body>
</html>