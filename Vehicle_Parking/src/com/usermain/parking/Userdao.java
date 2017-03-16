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
	
	public void registeruser(UserBean ub)
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
				
			String q="INSERT INTO T_XBBNHGZ_USERINFO VALUES(?,?,?,?,?)";
			stmt = c.prepareStatement(q);
			stmt.setInt(1, ub.getUser_id());
			stmt.setString(2, ub.getUser_name());
			stmt.setString(3, ub.getUser_mail());
			stmt.setLong(4, ub.getUser_phone());
			stmt.setTimestamp(5, parkdao.getCurrentTimeStamp());
			stmt.executeUpdate();
		
			System.out.println("Registered Successfully.!! User ID is :"+ub.getUser_id());
				return;
		}catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void login(int uid)
	{
		try{
			boolean flag=false;
			
			String q="SELECT USERNAME FROM T_XBBNHGZ_USERINFO WHERE USERID = ? ";
			//st=c.createStatement();
			stmt = c.prepareStatement(q);
			stmt.setInt(1, uid);
			
			
			resultset=stmt.executeQuery();
			
			if(resultset.next())
			{
				//if(resultset.getInt("userid")==uid)
				//{
					System.out.println("Authenticated!\nWelcome "+resultset.getString(1));
					flag=true;    
					
					Parkapp pd=new Parkapp();
					pd.parkdetails(uid);
				//}
			}
			
			if(!flag)
			{
				System.out.println("OOPS! Seems you have not registered...pls login after registering yourself! \n Thank you!");
			}
			
			
		}catch (Exception e)
		{
			e.printStackTrace();
		}
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
