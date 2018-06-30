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
<body>

<div class="maindiv">
<form name="frmlogin" action="dologin.jsp" method="post">
<pre>
                               <b>Username:</b><input type="text" name="txtuser" value="RAM" width='15'>
                               
                               <b>Password:</b><input type="password" name="txtpass" value="RAM123"width='15'>
                               
                               <input type="submit" name="btnlogin" value="Login" onclick="return checklogin();"/> <input type="reset" name="btnreset" value="Cancel"/>

</pre>

 <img src="Images/n1.jpg" id="MyImage" width="100%" height="100%">
</form>
</div>
</body>
</html>