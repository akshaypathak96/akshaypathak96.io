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
String tgen=session.getAttribute("sgen").toString();
String c1="" , c2="";
if("M".equals(tgen))
	c1="checked";
else if("F".equals(tgen))
	c2="checked";
int tday=Integer.parseInt(session.getAttribute("sday").toString());
int tmon=Integer.parseInt(session.getAttribute("smon").toString());
int tyear=Integer.parseInt(session.getAttribute("syear").toString());
String taddr=session.getAttribute("saddr").toString();
String tcourse=session.getAttribute("scourse").toString();
String tcontact=session.getAttribute("scontact").toString();
String temail=session.getAttribute("semail").toString();
%>

<body onload="set();">
<script>
function set()
{
	document.getElementById('dday').value=<%=tday%>;
	document.getElementById('dmon').value=<%=tmon%>;
	document.getElementById('dyear').value=<%=tyear%>;
	document.getElementById('course').value="<%=tcourse%>";
}
</script>
<form name="frmupd" action="doupdate.jsp" method="post">
<div class="maindiv">
<pre>
      Form No:  <input type="text" name="txtform" readonly="readonly" value="<%=tfno%>" size="15"/>
   
   First Name:  <input type="text" name="txtfname" value="<%=tfname%>"size="15" placeholder="Enter first name"/> 
    
    Last Name:  <input type="text" name="txtlname" value="<%=tlname%>"size="15" placeholder="Enter last name"/>
       
       Gender:  <input type="radio" name="radgen" value="M" <%=c1%>/>Male:<input type="radio" name="radgen" value="F" <%=c2%>/>Female
   
   
      DOB: Day: <select name="cmbday" id="dday">
                    <option value="-1">--select--</option>
                    <script>
                    setRange(1,31)
                    </script>
                    </select> Month:<select name="cmbmonth" id="dmon">
                    <option value="-1">--select--</option>
                    <script>
                    setRange(1,12)
                    </script>
                    </select> Year:<select name="cmbyear" id="dyear">
                    <option value="-1">--select--</option>
                    <script>
                    setRange(1975,2000)
                    </script>
                    </select> 

    Address:  <textarea name="txtadd" rows="3" cols="30" placeholder="Enter address"><%=taddr %></textarea>

       Course:  <select name="cmbcourse" size="1" id="course">
      <option value="-1">--select--</option>
      <option value="C">C Programming</option>
      <option value="C++">C++ Programming</option>
      <option value="DS">Data Structure</option>
      <option value="Java">Java Programming</option>
      <option value="net">.Net Framework</option>
      <option value="Hib">Hibernate</option>
      
      </select>

Contact No.:(+91) <input type="text" name="txtcont" size="15" value="<%=tcontact%>" placeholder="Enter contact number">

   Email id:      <input type="text" name="txtemail" size="15" value="<%=temail%>" placeholder="Enter email id"/>

          <input type="submit" name="btnadd" value="Update"/>  <input type="reset" name="btncan" value="Cancel"/>
</pre>
</div>
</form>
</body>
</html>