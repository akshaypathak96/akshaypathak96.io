<%@page import="java.sql.*" %>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
<%
Connection cn=null;
try 
{
DriverManager.registerDriver(new OracleDriver());
cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ak16","tiger");
int id=Integer.parseInt(request.getParameter("txtid"));
String iname=request.getParameter("txtphoto");
File imgFile=new File(iname);
FileInputStream fin=new FileInputStream(imgFile);
String qry="Insert into photos values(?,?)";
PreparedStatement ps=cn.prepareStatement(qry);
ps.setInt(1,id);
ps.setBinaryStream(2,fin,(int)imgFile.length());
ps.executeUpdate();

session.setAttribute("msg", "New Photo Uploaded");
session.setAttribute("fname","photoupload.jsp");
response.sendRedirect("success.jsp");
}

catch(Exception e)
{
	out.println(e.getMessage());
	session.setAttribute("msg", "There is a problem");
	session.setAttribute("fname","photoupload.jsp");
	response.sendRedirect("error.jsp");
}

%>
</body>
</html>