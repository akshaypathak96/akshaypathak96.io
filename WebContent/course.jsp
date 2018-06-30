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
<body>
<form name="frmadd" action="docourse.jsp" method="post">
<div class="maindiv">
<pre>
        Course Code:<input type="text" name="txtcode" size='15'/>
        
        Course Name:<input type="text" name="txtname" size='15'/>
        
    Course Duration:<select name="cmbmonth">
                    <option value="-1">--select--</option>
                    <script>
                    setRange(1,12)
                    </script>
                    </select>(In Months)
        
      Course charge:<input type="text" name="txtfees" size='15'/>
          
          <input type="submit" name="btnadd" value="Add">  <input type="reset" name="btncan" value="Cancel">
</pre>
</div>
</form>
</body>
</html>