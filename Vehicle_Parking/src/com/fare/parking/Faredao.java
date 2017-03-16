package com.fare.parking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.parkinfo.parking.*;
import com.slots.parking.Slotdao;

public class Faredao {
	
	Connection c= Dbconnect.connectfun();
	Statement st=null;
	PreparedStatement stmt = null;
	ResultSet resultset = null;
	float fare;String type;
	
	public void updatefare(int rid)
	{
		Parkingdao parkdao=new Parkingdao();
		FareBean fareBean=new FareBean();
		
		try
		{
			 String s="SELECT * FROM T_XBBNHGZ_PARKINFO WHERE RANDOM_ID=?";
			 stmt=c.prepareStatement(s);
			 stmt.setInt(1, rid);
			 resultset=stmt.executeQuery();
				
			 if(resultset.next())
			 { 
		
				 	s="UPDATE T_XBBNHGZ_FARE SET CHECKOUT=? WHERE RANDOM_ID=?";
				 	stmt=c.prepareStatement(s);
				 	stmt.setTimestamp(1, parkdao.getCurrentTimeStamp());
				 	stmt.setInt(2, rid);
				 	stmt.executeQuery();
		
				 	s="SELECT round((to_char(CHECKIN,'J')-to_char(CHECKOUT,'J'))*1440+(to_char(CHECKIN,'SSSSS')-to_char(CHECKOUT,'SSSSS'))/60) FROM T_XBBNHGZ_FARE WHERE RANDOM_ID=?";
				 	stmt=c.prepareStatement(s);
				 	stmt.setInt(1, rid);
				 	resultset=stmt.executeQuery();
		
				 	while(resultset.next())
				 	{
				 		int m=Math.abs(resultset.getInt(1));
				 		fareBean.setDuration(m);
				 	}
		
				 	s="SELECT VEHICLE_TYPE FROM T_XBBNHGZ_PARKINFO WHERE RANDOM_ID=?";
				 	stmt=c.prepareStatement(s);
				 	stmt.setInt(1, rid);
				 	resultset=stmt.executeQuery();
		
				 	while(resultset.next())
				 	{
				 		fareBean.setType(resultset.getString(1));
				 		type=resultset.getString(1);
				 	}
		
		
				 	Fareapp fareapp=new Fareapp();
				 	fare=fareapp.calculatefare(fareBean);
		
				 	s="UPDATE T_XBBNHGZ_FARE SET TYPE=?,FARE=? WHERE RANDOM_ID=?";
				 	stmt=c.prepareStatement(s);
				 	stmt.setString(1, type);
				 	stmt.setFloat(2, fare);
				 	stmt.setInt(3, rid);
				 	stmt.executeQuery();
		
				 	s="UPDATE T_XBBNHGZ_PARKINFO SET PARKING_FARE=? WHERE RANDOM_ID=?";
				 	stmt=c.prepareStatement(s);
				 	stmt.setFloat(1, fare);
				 	stmt.setInt(2, rid);
				 	stmt.executeQuery();
		
				 	Slotdao sd=new Slotdao();
				 	sd.updateonlogout(rid);
		
			 }
			 else
			 {
				 System.out.println("Please enter valid parking id");
				 return;
			 }
			 
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}
