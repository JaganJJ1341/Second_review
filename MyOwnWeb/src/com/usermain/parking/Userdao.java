package com.usermain.parking;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.List;
import java.util.Scanner;

import com.parkinfo.parking.*;

public class Userdao {
	
	Connection c= Dbconnect.connectfun();
	Statement st=null;
	PreparedStatement stmt = null;
	ResultSet resultset = null;
	Parkingdao parkdao=new Parkingdao();
	
	public int registeruser(UserBean ub)
	{
		try{
			 /* int userid=ub.getUser_id();
			  String name=ub.getUser_name();
			  String mail=ub.getUser_mail();
			  long number=ub.getUser_phone();
			  Timestamp time=parkdao.getCurrentTimeStamp();*/
			  
			  
			 //String s="begin procdemo("+userid+",'"+name+"','"+mail+"',"+number+","+time+"); end;";
			 //st = c.createStatement();
		     //st.executeQuery(s);
			
			/*System.out.println("came to registerdao"); 
		     String s="begin procdemo(?,?,?,?,?); end;";
		     stmt = c.prepareStatement(s);
				
				stmt.setInt(1, ub.getUser_id());
				stmt.setString(2, ub.getUser_name());
				stmt.setString(3, ub.getUser_mail());
				stmt.setLong(4, ub.getUser_phone());
				stmt.setTimestamp(5, parkdao.getCurrentTimeStamp());
				stmt.executeUpdate();*/
			System.out.println("came to registerdao  "+ub.getUser_id()+"--"+ub.getUser_name()+"--"+ub.getUser_mail()+"--"+ub.getUser_phone()); 
			String q="INSERT INTO T_XBBNHGZ_USERINFO VALUES(?,?,?,?,?)";
			stmt = c.prepareStatement(q);
			stmt.setInt(1, ub.getUser_id());
			stmt.setString(2, ub.getUser_name());
			stmt.setString(3, ub.getUser_mail());
			stmt.setLong(4, ub.getUser_phone());
			stmt.setTimestamp(5, parkdao.getCurrentTimeStamp());
			stmt.executeUpdate();
		
			System.out.println("Registered Successfully.!! User ID is :"+ub.getUser_id());
				return ub.getUser_id();
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	
	public ResultSet login(int uid)
	{
		try{
			boolean flag=false;
			
			String q="SELECT USERNAME FROM T_XBBNHGZ_USERINFO WHERE USERID = ? ";
		
			stmt = c.prepareStatement(q);
			stmt.setInt(1, uid);
			
			
			resultset=stmt.executeQuery();
			
		}catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return resultset;
	}
	
	public void closeConnection()
	{
			try 
			{
				if(resultset != null)
				resultset.close();
				if(stmt != null)					
				stmt.close();				
				c.commit();
				if(c != null)
				c.close();
			}			
			 catch (SQLException e) 
			{
					// TODO Auto-generated catch block
					e.printStackTrace();
			}
	 }
	
	
}
