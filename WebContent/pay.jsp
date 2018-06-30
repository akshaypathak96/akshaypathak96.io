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


<% 
int tfno=Integer.parseInt(session.getAttribute("sfno").toString());
String tfname=session.getAttribute("sfname").toString();
String tlname=session.getAttribute("slname").toString();
String tcourse=session.getAttribute("scourse").toString();
String tcontact=session.getAttribute("scontact").toString();
String tfees=session.getAttribute("sfees").toString();
String tdeposit=session.getAttribute("sdeposit").toString();
%>

<form name="frmpay" action="dopay.jsp" method="post">
<div class="maindiv">
<pre>
      Form No:  <input type="text" name="txtform" readonly="readonly" value="<%=tfno%>" size="15"/>
   
   First Name:  <input type="text" name="txtfname" value="<%=tfname%>"size="15"/> 
    
    Last Name:  <input type="text" name="txtlname" value="<%=tlname%>"size="15"/>
       
       Course:  <input type="text" name="txtcourse" value="<%=tcourse%>"size="15"/>

   Total fees:  <input type="text" name="txtfees" size="15" value="<%=tfees%>"size="15"/>

      Deposit:  <input type="text" name="txtdep" size="15" value="<%=tdeposit%>"size="15"/>
   
Current Deposit:  <input type="text" name="txtpay" size="15"/>

          <input type="submit" name="btnadd" value="Deposit"/>  
</pre>
</div>
</form>
</body>
</html>