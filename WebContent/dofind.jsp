<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="chk3" class="mypack.Student" scope="session"/>
<jsp:setProperty property="*" name="chk3"/>
<%
ResultSet rs=chk3.findRec();
if(rs.next())
{
session.setAttribute("sfno",rs.getInt("dformno"));
session.setAttribute("sfname", rs.getString("dfname"));
session.setAttribute("slname", rs.getString("dlname"));
session.setAttribute("sgen", rs.getString("dgen"));
session.setAttribute("sday", rs.getInt("day"));
session.setAttribute("smon", rs.getInt("mon"));
session.setAttribute("syear", rs.getInt("year"));
session.setAttribute("saddr", rs.getString("daddr"));
session.setAttribute("scourse", rs.getString("dcourse"));
session.setAttribute("scontact", rs.getLong("dcontact"));
session.setAttribute("semail", rs.getString("demail"));
session.setAttribute("sfees", rs.getInt("dfees"));
session.setAttribute("sdeposit", rs.getInt("ddeposit"));
String file=session.getAttribute("op").toString();
if("update".equals(file))
response.sendRedirect("update.jsp");
else if("delete".equals(file))
response.sendRedirect("delete.jsp");
else
	response.sendRedirect("pay.jsp");
}
else
{
session.setAttribute("msg","Record not found");
session.setAttribute("fname","find.jsp");
response.sendRedirect("error.jsp");

}
%>
</body>
</html>