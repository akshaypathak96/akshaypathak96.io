package mypack;
import java.sql.*;
import javax.swing.JOptionPane;
import oracle.jdbc.*;
public class MyConnection {
Connection cn=null;
public Connection connect()
{
	try 
	{
	DriverManager.registerDriver(new OracleDriver());
	cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ak16","tiger");
	}
	
	catch(Exception e)
	{
		JOptionPane.showMessageDialog(null, e.getMessage());
	}
return (cn);
}
}