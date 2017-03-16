package com.parkinfo.parking;

import java.sql.*;

public class Dbconnect {
	public static Connection connectfun()
	{
		Connection con=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@10.232.71.29:1521:INATP02","shobana","shobana");
			
			/*Class.forName("org.apache.derby.jdbc.ClientDriver");
			con=DriverManager.getConnection("jdbc:derby://172.24.21.38:1527/parkingdb","user","hello");*/
		}
		catch(Exception e){
			e.printStackTrace();
		}		
	
	return con;
}

}
