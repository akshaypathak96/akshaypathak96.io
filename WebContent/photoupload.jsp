cc<%@include file="format.jsp"%>
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
<form id="form1" action="dophotoupload.jsp" method="post">
<pre>
       Enter photo id: <input type="text" name="txtid"/>
       
       Select photo id: <input type="file" name="txtphoto"/>
       
        <input type="submit" value="Add photo"/>
</pre>
</form>
</div>
</body>
</html>