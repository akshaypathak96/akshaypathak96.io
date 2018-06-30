<%@include file="format.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="design.css" rel="stylesheet" type="text/css"/>
</head>
<%
String mymsg=session.getAttribute("msg").toString();
String myfile=session.getAttribute("fname").toString();
if(request.getParameter("btnback")!=null)
{
	response.sendRedirect(myfile);
}
%>
<body>
<form name="frmsuc" action="" method="post">
<div class="maindiv">
<pre>
<% 
out.println(mymsg);
%>
<input type="submit" name="btnback" value="Back"/>
</pre>
</div>
</form>
</body>
</html>