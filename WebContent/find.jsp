<%@include file="format.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Find details</title>
<link href="design.css" rel="stylesheet" type="text/css"/>
</head>
<%
session.setAttribute("op", request.getQueryString());
%>
<body>
<form name ="frmfind" action="dofind.jsp" method="post">
<div class="maindiv">
<pre>
 Enter form no:  <input type="text" name="txtform" size="15"/>
       <input type="submit" name="btnfind" value="Find">  <input type="reset" name="btncan" value="Cancel">

</pre>
</div>
</form>         
</body>
</html>