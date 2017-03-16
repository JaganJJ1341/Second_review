package com.slots.parking;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.parkinfo.parking.*;

public class Slotdao {
	
	Connection c= Dbconnect.connectfun();
	Statement st=null;
	PreparedStatement stmt = null;
	ResultSet resultset = null;
	int sid;

	public int assignslot(int rnum)
	{
		try{
			String s="SELECT MIN(SLOT_NUMBER) FROM T_XBBNHGZ_SLOTSTATUS WHERE SLOT_STATUS='EMPTY' ORDER BY SLOT_NUMBER DESC";
					st=c.createStatement();
		
					resultset=st.executeQuery(s);
		
					while(resultset.next())
					{
						sid=resultset.getInt(1);
					}
		
					//INSERT SLOTS & RANDOM ID
					s="INSERT INTO T_XBBNHGZ_SLOTS VALUES (?,?)";
					stmt=c.prepareStatement(s);
					stmt.setInt(1, rnum);
					stmt.setInt(2, sid);
	
					stmt.executeQuery();
		
					System.out.println("inserted successfully in T_XBBNHGZ_SLOTS");
		
					//UPDATE SLOT STATUS TABLE
					s="UPDATE T_XBBNHGZ_SLOTSTATUS SET SLOT_STATUS='FILLED' WHERE SLOT_NUMBER=?";
					stmt=c.prepareStatement(s);
					stmt.setInt(1, sid);
		
					stmt.executeQuery();
		
					System.out.println("Updated Slot status on login successfully");
		
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return sid;
	}
	
	public  void updateonlogout(int rid)
	{
		String s="UPDATE T_XBBNHGZ_SLOTSTATUS SET SLOT_STATUS='EMPTY' WHERE SLOT_NUMBER=(SELECT SLOT_NUMBER FROM T_XBBNHGZ_SLOTS WHERE RANDOM_ID=?)";
		try {
			
			stmt=c.prepareStatement(s);
			stmt.setInt(1, rid);
			stmt.executeQuery();
			System.out.println("Updated Slot status on logout successfully");
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean checkSlotStatus()
	{
		boolean flag=false;
		try
		{
			int numberofslots=0;
			String ss="SELECT COUNT(SLOT_NUMBER) FROM T_XBBNHGZ_SLOTSTATUS WHERE SLOT_STATUS='FILLED'";
			st=c.createStatement();
			resultset=st.executeQuery(ss);
			while(resultset.next())
			{
				numberofslots=resultset.getInt(1);
			}
			if(numberofslots < 10)
			   flag=true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return flag;
		
	}

}
