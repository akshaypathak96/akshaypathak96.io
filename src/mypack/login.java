package mypack;
import java.sql.*;
import javax.swing.JOptionPane;

public class login {
String uname,upass;
public void setTxtuser(String u)
{
	uname=u;
}
public String getTxtuser(){
	return uname;
	
}
public void setTxtpass(String p)
{
	upass=p;
}
public String getTxtpass()
{
	return upass;
}
public boolean checkLogin(){
	boolean valid=false;
	try
	{
		MyConnection obj=new MyConnection();
		Connection cn=obj.connect();
		String qry="select *from login where username=? and password=?";
		PreparedStatement ps=cn.prepareStatement(qry);
		ps.setString(1, uname);
		ps.setString(2, upass);
ResultSet rs=ps.executeQuery();
if(rs.next())
	valid=true;
else valid=false;
	}
	catch (Exception e)
	{
		JOptionPane.showMessageDialog(null, e.getMessage());
	}
return (valid);
	}
}


