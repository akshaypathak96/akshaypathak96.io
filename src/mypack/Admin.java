package mypack;

import java.sql.*;
import java.sql.PreparedStatement;

public class Admin 
{
    String fcode,fname;
    int fdur,ffees,fno,fpay;
    public void setTxtcode(String c)
    {
    	fcode=c;
    	
    }
    public String getTxtcode()
    {
    	return fcode;
    }

    public void setTxtname(String n)
{
   	    fname=n;
}

    public String getTxtname()
    {
    	return fname;
    }

    public void setCmbmonth(int m)
    {
    	fdur=m;
    }
   public void setTxtfees(int f)
   {
	   ffees=f;
   }
   public int getTxtfees()
   {
	   return ffees;
   }
   public void setTxtform(int f)
   {
	   fno=f;
   }
   public int getTxtform()
   {
	   return fno;
   }
   public void setTxtpay(int p)
   {
	   fpay=p;
   }
   public int getTxtpay()
   {
	   return fpay;
   }
   
   public boolean updatePay()
   {
	   boolean valid=false;
		try
		{
			
		    MyConnection obj=new MyConnection();
			Connection cn=obj.connect();
			String selqry="select to_char(sysdate,'dd/mm/yyyy')as sdate from dual";
            PreparedStatement ps2=cn.prepareStatement(selqry);
            ResultSet rs=ps2.executeQuery();
            String mdate="";
            if(rs.next())
            {
            	mdate=rs.getString("sdate");
            }
            
            String updqry="update student set ddeposit=ddeposit+? where dformno=?";
            PreparedStatement ps=cn.prepareStatement(updqry);		
            ps.setInt(1, fpay);
            ps.setInt(2, fno);
            ps.executeUpdate();
            
            String insqry="insert into payfees values(?,?,to_date(?,'dd/mm/yyyy'))";
            PreparedStatement ps3=cn.prepareStatement(insqry);		
            ps3.setInt(1, fno);
            ps3.setInt(2, fpay);
            ps3.setString(3, mdate);
            ps3.executeUpdate();
            valid=true;
            
        }
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return valid;
	}
   
   
public boolean addCourse()
{
	boolean valid=false;
	try
	{
		
	    MyConnection obj=new MyConnection();
		Connection cn=obj.connect();
		String qry="insert into course values(?,?,?,?)";
		PreparedStatement ps=cn.prepareStatement(qry);
		ps.setString(1,fcode);
		ps.setString(2,fname);
		ps.setInt(3,fdur);
		ps.setInt(4,ffees);
		ps.executeUpdate();
		valid=true;
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}
	return valid;
}
}



