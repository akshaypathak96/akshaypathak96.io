package mypack;

import java.sql.*;

public class Student 
{
	int fno,fday,fmon,fyear;
	long mbno;
	String fname,lname,gen,addr,course,email;
	public void setTxtform(int f)
	{
		fno=f;
	}
	public int getTxtform()
	{
		return fno;
	}
	public void setTxtfname(String f)
   {
	   fname=f;
   }
    public String getTxtfname()
    {
    	return fname;
    }
    public void setTxtlname(String l)
    {
 	   lname=l;
    }
     public String getTxtlname()
     {
     	return lname;
     }
    public void setRadgen(String r)
    {
    	gen=r;
    }
    public String getRadgen()
    {
    	return gen;
    }
    public void setCmbday(int d)
    {
    	fday=d;
    }
    public int getCmbday()
    {
    	return fday;
    }
    public void setCmbmonth(int m)
    {
    	fmon=m;
    }
    public int getCmbmonth()
    {
    	return fmon;
    }
    public void setCmbyear(int y)
    {
    	fyear=y;
    }
    public int getCmbyear()
    {
    	return fyear;
    }
    public void setTxtadd(String a)
    {
    	addr=a;
    }
    public String getTxtadd()
    {
    	return addr;
    }
    public void setCmbcourse(String c)
    {
    	course=c;
    }
    public String getCmbcourse()
    {
    	return course;
    }
    public void setTxtcont(long m)
    {
    	mbno=m;
    }
    public long getTxtcont()
    {
    	return mbno;
    }
    public void setTxtemail(String e)
    {
    	email=e;
    }
    public String getTxtemail()
    {
    	return email;
    }
    
public boolean addRecord()
    {
    	boolean valid=false;
    	try
    	{
    		String dob=null;
    		String day=null,mon=null;
    		if(fday<10)
    			day="0"+fday;
    		else
    			day=""+fday;
    		if(fmon<10)
    			mon="0"+fmon;
    		else
    			mon=""+fmon;
    		dob=day+"/"+mon+"/"+fyear;
    	    MyConnection obj=new MyConnection();
    		Connection cn=obj.connect();
    		String selqry="select cfees from course where ccode=?";
    		PreparedStatement ps2=cn.prepareStatement(selqry);
    		ps2.setString(1,course);
    		ResultSet rs=ps2.executeQuery();
    		int sfees=0;
    		if(rs.next())
    		{
    			sfees=rs.getInt(1);
    		}
    		String qry="Insert into student values(?,?,?,?,to_date(?,'dd/mm/yyyy'),?,?,?,?,?,?)";
    		PreparedStatement ps=cn.prepareStatement(qry);
    		ps.setInt(1,fno);
    		ps.setString(2,fname);
    		ps.setString(3,lname);
    		ps.setString(4,gen);
    		ps.setString(5,dob);
    		ps.setString(6,addr);
    		ps.setString(7,course);
    		ps.setLong(8,mbno);
    		ps.setString(9,email);
    		ps.setInt(10,sfees);
    		ps.setInt(11,0);
    		ps.executeUpdate();
    	    valid=true;
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return valid;
    }
    
public ResultSet findRec()
    {
    	 ResultSet rs=null;

    try
    {

    	MyConnection obj=new MyConnection();
    	Connection cn=obj.connect();
    	String qry="select dformno,dfname,dlname,dgen,"+
    	            "extract(day from ddob) as day,"+
    			    "extract(month from ddob) as mon,"+
    	            "extract(year from ddob) as year,"+
    			    "daddr,dcourse,dcontact,demail,"+
    	            "dfees, ddeposit from student where dformno=?";
    	PreparedStatement ps=cn.prepareStatement(qry);
        ps.setInt(1, fno);
        rs=ps.executeQuery();
    }
    catch(Exception e)
    {
    System.out.println(e.getMessage());
    }
    return rs;
    }

public boolean deleteRec()
    {
    	
    	boolean valid=false;
    	try
    	{
    		MyConnection obj=new MyConnection();
    		Connection cn=obj.connect();
    		String qry="delete from student where dformno=?";
    		PreparedStatement ps=cn.prepareStatement(qry);
    		ps.setInt(1,fno);
    		ps.executeUpdate();
    	    valid=true;
    	}
    	catch(Exception e)
    	{
    		System.out.println(e.getMessage());
    	}
    	return valid;
    	}
    
public boolean updateRec()
    {
    	boolean valid=false;
    	try
    	{
    		String dob=null;
    		String day=null,mon=null;
    		if(fday<10)
    			day="0"+fday;
    		else
    			day=""+fday;
    		if(fmon<10)
    			mon="0"+fmon;
    		else
    			mon=""+fmon;
    		dob=day+"/"+mon+"/"+fyear;
    	    MyConnection obj=new MyConnection();
    		Connection cn=obj.connect();
    		String qry="update student set dfname=?, dlname=?, dgen=?, ddob=to_date(?,'dd/mm/yyyy'),daddr=?,"+
    				   "dcourse=?, dcontact=?, demail=?"+
    				   " where dformno=?";
    		PreparedStatement ps=cn.prepareStatement(qry);
    		ps.setInt(9,fno);
    		ps.setString(1,fname);
    		ps.setString(2,lname);
    		ps.setString(3,gen);
    		ps.setString(4,dob);
    		ps.setString(5,addr);
    		ps.setString(6,course);
    		ps.setLong(7,mbno);
    		ps.setString(8,email);
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


