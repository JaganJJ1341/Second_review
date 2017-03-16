package com.parkinfo.parking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class Parkingdao {

	Connection c= Dbconnect.connectfun();
	
	PreparedStatement stmt = null;
	List summarylist = null;
	ResultSet resultset = null;
	
	public List getDetails(int random_id)
	{
		String query = "SELECT *  from T_XBBNHGZ_PARKINFO where RANDOM_ID = ?  ";
		
		try {
			 stmt = c.prepareStatement(query);
			 stmt.setInt(1, random_id);		
			
			 resultset = stmt.executeQuery();	
			
			 summarylist = new ArrayList<ParkingBean>();
			 
			while(resultset.next()) 
			{
				ParkingBean park = new ParkingBean();
				park.setRandom_id(resultset.getInt(1));
				park.setUser_id(resultset.getInt(2));
				park.setVehicle_type(resultset.getString(3));
				park.setVehicle_number(resultset.getString(4));
				park.setSlot_number(resultset.getInt(5));
				park.setParking_fare(resultset.getFloat(6));
				
				summarylist.add(park);
						
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		/*finally{
			try {
				if(resultset != null)
				resultset.close();
				if(stmt != null)					
				stmt.close();				
				c.commit();
				if(c != null)
				c.close();
			}			
			 catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}*/

		
		return summarylist;
	}
		
	public java.sql.Timestamp getCurrentTimeStamp() {

		java.util.Date today = new java.util.Date();
		return new java.sql.Timestamp(today.getTime());
	}
	
	public void insert(ParkingBean pb)
	{
		try
		{
			
			//Statement st= c.createStatement();
			String q="INSERT INTO T_XBBNHGZ_PARKINFO VALUES(?,?,?,?,?,?)";
			stmt = c.prepareStatement(q);
			stmt.setInt(1, pb.getRandom_id());
			stmt.setInt(2, pb.getUser_id());
			stmt.setString(3, pb.getVehicle_type());
			stmt.setString(4, pb.getVehicle_number());
			stmt.setInt(5, pb.getSlot_number());
			stmt.setFloat(6, pb.getParking_fare());
			
			stmt.executeUpdate();
			
			System.out.println("Your parking ID is :"+pb.getRandom_id()+"\n U can park in slot number :"+pb.getSlot_number()+"\nInserted Successfully in T_XBBNHGZ_PARKINFO VALUES...!!!");
			
			q="INSERT INTO T_XBBNHGZ_FARE VALUES (?,?,?,?,?)";
			stmt = c.prepareStatement(q);
			stmt.setInt(1, pb.getRandom_id());
			stmt.setTimestamp(2, getCurrentTimeStamp());
			stmt.setTimestamp(3, getCurrentTimeStamp());
			stmt.setString(4, pb.getVehicle_type());
			stmt.setFloat(5, 0);
			stmt.executeUpdate();
			
			System.out.println("Inserted Successfully in T_XBBNHGZ_FARE VALUES...!!!");

			
		}
		catch(Exception e)
		{
			System.out.println("hello");
			e.printStackTrace();
		}
		
		return ;
	}
	
	
	}

