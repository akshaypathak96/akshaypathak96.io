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
	String qry="select dformno , dfname , dlname , dcourse , dcontact , daddr from student order by dformno";
	ps=cn.prepareStatement(qry);
	rs=ps.executeQuery();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
<body>
<div class="maindiv">
<form name="frmview" action="" method="post">
  <pre>
  
      <table class="tabdiv" cellpadding="2" cellspacing="2">
      <tr bgcolor="red">
          
          <td>Form No</td>
          <td>Name</td>
          <td>Course</td>
          <td>Contact</td>
          <td>Address</td>
          </tr>
          <%
                while(rs.next())
                {
          %>
          <tr bgcolor="cream">
          <td><%=rs.getInt(1)%></td>
          <td><%=rs.getString(2)+" "+rs.getString(3)%></td>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getLong(5)%></td>
          <td><%=rs.getString(6)%></td>
          </tr>
          
          
          <%
                }         
          %>


      </table>




    </pre>
</form>
</div>
</body>
</html>