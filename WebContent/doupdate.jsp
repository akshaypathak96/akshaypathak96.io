<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updating...</title>
</head>
<body>
<jsp:useBean id="chk4" class="mypack.Student" scope="session"/>
<jsp:setProperty property="*" name="chk4"/>
<%
 if(chk4.updateRec())
 {
	    session.setAttribute("msg", "Record Updated");
		session.setAttribute("fname","find.jsp");
		response.sendRedirect("success.jsp");
 }
 else
 {
	 
	 session.setAttribute("msg","Their is some problem");
	 session.setAttribute("fname","update.jsp");
	 response.sendRedirect("error.jsp");
 }



%>
</body>
</html>