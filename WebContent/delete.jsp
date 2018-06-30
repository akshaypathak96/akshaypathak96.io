<%@include file="format.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Details</title>
<link href="design.css" rel="stylesheet" type="text/css"/>
</head>
<script>

<% 
int tfno=Integer.parseInt(session.getAttribute("sfno").toString());
String tfname=session.getAttribute("sfname").toString();
String tlname=session.getAttribute("slname").toString();
String tcourse=session.getAttribute("scourse").toString();
String tcontact=session.getAttribute("scontact").toString();
%>

function check()
{
var c=confirm("Do you want to delete(Y/N)?");	
{
if(c)
	{
	return true;
	}
else
	{
	return false;
	}
	
}
}
</script>
<form name="frmdel" action="dodelete.jsp" method="post">
<div class="maindiv">
<pre>
      Form No:  <input type="text" name="txtform" readonly="readonly" value="<%=tfno%>" size="15"/>
   
   First Name:  <input type="text" name="txtfname" value="<%=tfname%>"size="15"/> 
    
    Last Name:  <input type="text" name="txtlname" value="<%=tlname%>"size="15"/>
       
       Course:  <input type="text" name="txtcourse" value="<%=tcourse%>"size="15"/>

Contact No.:(+91) <input type="text" name="txtcont" size="15" value="<%=tcontact%>">

   

          <input type="submit" name="btnadd" value="Delete" onclick="return check();"/>  
</pre>
</div>
</form>
</body>
</html>