<%@include file="format.jsp" %>
<%@page import="java.sql.*,oracle.jdbc.driver.*" %>
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
    Connection cn=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    try 
	{
	DriverManager.registerDriver(new OracleDriver());
	cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ak16","tiger");
	String qry="select ccode , cname from course order by cname";
	ps=cn.prepareStatement(qry);
	rs=ps.executeQuery();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
<body>
<form name="frmadd" action="doadd.jsp" method="post">
<div class="maindiv">
<pre>
      Form No:  <input type="text" name="txtform" size="15" placeholder="Enter form number"/>
   
   First Name:  <input type="text" name="txtfname" size="15" placeholder="Enter first name"/> 
    
    Last Name:  <input type="text" name="txtlname" size="15" placeholder="Enter last name"/>
       
       Gender:  <input type="radio" name="radgen" value="M" checked="checked"/>Male:<input type="radio" name="radgen" value="F"/>Female
   
   
     DOB:           Year:<select name="cmbyear" id="year">
                    <option value="-1">--select--</option>
                    <script>
                    setRange(1975,2000)
                    </script>
                    </select>Month:<select name="cmbmonth" id="mon" onchange="setdays();">
                    <option value="-1">--select--</option>
                    <script>
                    setRange(1,12)
                    </script>
                    </select>Day:  <select name="cmbday" id="day">
                    </select>  

    Address:  <textarea name="txtadd" rows="3" cols="30" placeholder="Enter address"/></textarea>

       Course:  <select name="cmbcourse" size="1">
      <option value="-1">--select--</option>
      <%
      while(rs.next())
      {
    %>
         <option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>    
    <% 	  
      }
      %>
      </select>

Contact No.:(+91) <input type="text" name="txtcont" size="15" placeholder="Enter contact number"/>

   Email id:      <input type="text" name="txtemail" size="15" placeholder="Enter email id"/>

          <input type="submit" name="btnadd" value="Add" onclick="return checkAdd();">  <input type="reset" name="btncan" value="Cancel">
</pre>
</div>
</form>
</body>
</html>