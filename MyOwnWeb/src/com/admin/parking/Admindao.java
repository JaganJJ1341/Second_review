package com.admin.parking;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

import com.parkinfo.parking.*;


public class Admindao {
	
	Connection c= Dbconnect.connectfun();
	Statement st=null;
	PreparedStatement stmt = null;
	ResultSet resultset = null;
	
	public int[] calculateTotalFare(int month)
	{
		String s="SELECT SUM(FARE), COUNT(RANDOM_ID) FROM T_XBBNHGZ_FARE WHERE TO_CHAR(checkin, 'MM')=?";
		int[] res=new int[3];
		try{
			
			
			stmt=c.prepareStatement(s);
			if(month>=1 && month<10)
			{
				s="0"+Integer.toString(month);
			}
			stmt.setString(1,s);
			
			resultset=stmt.executeQuery();
			while(resultset.next())
			{
				res[0]=resultset.getInt(1);
				res[1]=resultset.getInt(2);
				System.out.println("\nTotal Fare collected for this month is: Rs. "+res[0]+"\n Total Number of Parking:"+res[1]);
			}
			
			
			
			
			
			s="SELECT COUNT(USERID) FROM T_XBBNHGZ_USERINFO";
			stmt=c.prepareStatement(s);
			
			resultset=stmt.executeQuery();
			while(resultset.next())
			{	
				res[2]=resultset.getInt(1);
				System.out.println("\nTotal number of registered users : "+res[2]);
			}
			
			
			return res;
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return res;
	}
	
	public List<ParkingBean> fetchHistoryOfUser(int userId)
	{
		try{
		String s="select RANDOM_ID from T_XBBNHGZ_PARKINFO WHERE USER_ID=?";
		List<ParkingBean> holdingList=null;
		int count=0;
		
			Parkingdao pdao=new Parkingdao();
			stmt=c.prepareStatement(s);
			stmt.setInt(1, userId);
			
			resultset=stmt.executeQuery();
			
			
			System.out.format("%-20s %-20s %-20s %-20s %-20s %-20s \n","PARKING ID","USER_ID","VEHICLE_TYPE","VEHICLE_NUMBER","SLOT_NUMBER","FARE");
			System.out.println();
			//System.out.println("Parking Id\tUser Id\tVehicle Type\tVehicle Number\tSlot Number\tParking Fare");
		while(resultset.next())
			{
				//System.out.println("Requested User's Detail is:"+resultset.getInt(1)+"\n Total Number of Parking:"+resultset.getInt(2));
				holdingList.add((ParkingBean) pdao.getDetails(resultset.getInt(1)));     
				/*Iterator<ParkingBean> itr =  holdingList.iterator();
				while(itr.hasNext()){
					ParkingBean pp  = itr.next();
				System.out.format("%-20d %-20d %-20s %-20s %-20d %-20f \n",pp.getRandom_id(),pp.getUser_id(),pp.getVehicle_type(),pp.getVehicle_number(),pp.getSlot_number(),pp.getParking_fare());
				
				}*/
			}
			
			s="select count(USER_ID) from T_XBBNHGZ_PARKINFO WHERE USER_ID=?";
			stmt=c.prepareStatement(s);
			stmt.setInt(1, userId);
			resultset=stmt.executeQuery();
			while(resultset.next())
			   count=resultset.getInt(1);
			
			System.out.println("This user has parked "+count+" times Holding list size"+holdingList.size() );
			
			return holdingList;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
		 
		
		
	}
		
	public void deleteUserAccount(int userId)
	{
		String s="delete from T_XBBNHGZ_USERINFO where USERID=?";
		try{
			stmt=c.prepareStatement(s);
			stmt.setInt(1, userId);
			stmt.executeQuery();
			System.out.println("Deleted successfully");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
	public void fetchHistoryOfaDay(String date)
	{
		String s="SELECT P.RANDOM_ID,P.USER_ID,P.VEHICLE_TYPE,P.VEHICLE_NUMBER,P.SLOT_NUMBER,Q.CHECKIN,Q.CHECKOUT,Q.FARE FROM T_XBBNHGZ_PARKINFO P LEFT JOIN T_XBBNHGZ_FARE Q ON P.RANDOM_ID=Q.RANDOM_ID WHERE TO_CHAR(Q.CHECKIN ,'DD-MM-YYYY')=?";
		System.out.format("%-20s %-20s %-20s %-20s %-20s %-20s %-30s %-26s","PARKING ID","USER_ID","VEHICLE_TYPE","VEHICLE_NUMBER","SLOT_NUMBER","CHECK IN","CHECK OUT","FARE");
		System.out.println();
		try{
			stmt=c.prepareStatement(s);
			stmt.setString(1, date);
			resultset=stmt.executeQuery();
			
			while(resultset.next()){
				//System.out.println(resultset.getInt(1)+"---"+resultset.getInt(2)+"---"+resultset.getString(3)+"---"+resultset.getString(4)+"---"+resultset.getInt(5)+"---"+resultset.getTimestamp(6)+"---"+resultset.getTimestamp(7)+"---"+resultset.getFloat(8));
			System.out.format("%-20d %-20d %-20s %-20s %-20d %-20s %-20s %-20f ",resultset.getInt(1),resultset.getInt(2),resultset.getString(3),resultset.getString(4),resultset.getInt(5),resultset.getTimestamp(6),resultset.getTimestamp(7),resultset.getFloat(8));
			System.out.println();
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public int fetchNumberOfNewUsers(int month)
	{
		String s="select COUNT(USERID) from T_XBBNHGZ_USERINFO WHERE TO_CHAR(DATEOFREGISTER ,'MM') = ?";
		String ss="";
		try{
			stmt=c.prepareStatement(s);
			if(month>=1 && month<10)
			{
				ss="0"+Integer.toString(month);
			}
			stmt.setString(1,ss);

			resultset=stmt.executeQuery();
			while(resultset.next())
				return (resultset.getInt(1));
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return 0;
	}
}