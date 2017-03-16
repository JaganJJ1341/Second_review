package com.usermain.parking;

import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

import com.admin.parking.Admindao;
import com.fare.parking.FareBean;
import com.fare.parking.Fareapp;
import com.fare.parking.Faredao;
import com.parkinfo.parking.ParkingBean;
import com.parkinfo.parking.Parkingdao;
import com.slots.parking.Slotdao;

public class Userapp {

	public static void main(String[] args)
	{
		int ch=0;boolean flag=false,flag1=false;
		Scanner sc=new Scanner(System.in);
		Random rand = new Random();
		System.out.println("****VEHICLE PARKING SYSTEM**** \nEnter your choice: 1.Register 2.Login 3.checkout 4.Admin login 5.Exit");
		ch=sc.nextInt();
		
		int userandom=0;
		Userdao u=new Userdao();
		
		do{
			if(ch==1)
			{
				sc.nextLine();
				UserBean ub=new UserBean();
				long num=0;
				System.out.println("\n***username must not contain any numbers\nEnter User Name:");
				String user=sc.nextLine();
				ub.setUser_name(user);
				
				System.out.println("Enter User Mail:");
				user=sc.nextLine();
				ub.setUser_mail(user);
				
				do{
					flag1=false;
					System.out.println("Enter your phone number:");
					num=sc.nextLong();
					String s=String.valueOf(num);
					if(s.length()!=10)
					{
						System.out.println("Enter 10 digit phone number");
						flag1=true;
					}	
				}while(flag1);
				
					ub.setUser_phone(num);
					sc.nextLine();
				
				userandom = rand.nextInt((100 - 1) + 1) + 1;
				ub.setUser_id(userandom);
				

				u.registeruser(ub);
			}
			
			else if(ch==2)
			{
				Slotdao slotdao=new Slotdao();
				if(slotdao.checkSlotStatus())
				{
					do
					{
						sc.nextLine();
						System.out.println("Enter User Id:");
						try
						{
							flag=false;
							userandom=sc.nextInt();
						}
						catch(Exception e)
						{
							flag=true;
							System.out.println("use valid userid");
						}
					}while(flag);
				
					u.login(userandom);
				}
				else
				{
					System.out.println("Sorry! All parking slots are filled currenty");
				}
			}
			
			else if(ch==3)
			{
				System.out.println("Enter Parking ID :");
				userandom=sc.nextInt();
				
				Faredao f=new Faredao();
				f.updatefare(userandom); //SENDING RANDOM ID IN NAME OF USERANDOM
				
				Parkingdao parkdao=new Parkingdao();
				
				List<ParkingBean> holdingList = parkdao.getDetails(userandom);
				System.out.format("%-20s %-20s %-20s %-20s %-20s %-20s \n","PARKING ID","USER_ID","VEHICLE_TYPE","VEHICLE_NUMBER","SLOT_NUMBER","FARE");
				Iterator<ParkingBean> itr =  holdingList.iterator();
				while(itr.hasNext()){
					ParkingBean pp  = itr.next();
				System.out.format("%-20d %-20d %-20s %-20s %-20d %-20f",pp.getRandom_id(),pp.getUser_id(),pp.getVehicle_type(),pp.getVehicle_number(),pp.getSlot_number(),pp.getParking_fare());
				
				System.out.println("\nThank u! Have a good day!");
				}
			
			}
			
			else if(ch==4)
			{
				System.out.println("Hello! Admin..please Enter Passcode to login...");
				int passcode=sc.nextInt();
				int choice=0;
				Admindao admindao=new Admindao();
				
				if(passcode==1234)
				{
					System.out.println("\n\nWelcome! ");
					System.out.println("\nEnter your choice:\n1.Total Fare in specific month & Number of Customers \n2.History of a Specific User \n3.Deleting a user account \n4.Transactions on particular date\n5.Number of users registered in a month \n6.Back to main menu");
					choice=sc.nextInt();
					do{
						if(choice==1)
						{
							System.out.println("Enter the month for which u want to calculate fare (MM) (Eg: for FEBRUAARY- 2):");
							int month=sc.nextInt();
							if(month>=01 && month<=12)
							{
								admindao.calculateTotalFare(month);
							}
							else
							{
								System.out.println("Please Enter Month in given format Eg: for FEBRUARY- 2");
							}
						}
					
						else if(choice==2)
						{
							int count;
							System.out.println("Enter the user id:");
							int userId=sc.nextInt();
							count=admindao.fetchHistoryOfUser(userId);
							System.out.println("This user has parked "+count+" times");
						}
					
						else if(choice==3)
						{
							System.out.println("Enter the user id:");
							int userId=sc.nextInt();
							admindao.deleteUserAccount(userId);
						}
						
						
						else if(choice==4)
						{
							sc.nextLine();
							System.out.println("Enter the date (Eg: DD-MM-YYYY) :");
							String date=sc.nextLine();
							
							admindao.fetchHistoryOfaDay(date);
						}
						
						
						else if(choice==5)
						{
							System.out.println("Enter the month for which u want to calculate fare (MM) (Eg: for FEBRUAARY- 2):");
							int month=sc.nextInt();
							int count=0;
							if(month>=01 && month<=12)
							{
								count=admindao.fetchNumberOfNewUsers(month);
							}
							else
							{
								System.out.println("Please Enter Month in given format Eg: for FEBRUARY- 2");
							}
							
							System.out.println("\n Total number users registered in the given month are/is : "+count);
							
						}
						
						System.out.println("\nEnter your choice:\n1.Total Fare in specific month & Number of Customers \n2.History of a Specific User \n3.Deleting a user account \n4.Transactions on particular date\n5.Number of users registered in a month \n6.Back to main menu");
						choice=sc.nextInt();
						
					}while(choice!=6);	
			   }
					else
					{
						choice=6;
						System.out.println("Passcode incorrect! please try again!");
					}
					
					
			}
			System.out.println("Enter your choice: 1.Register 2.Login 3.checkout 4.Admin login 5.Exit");
			ch=sc.nextInt();
			
		}while(ch!=5);
		
		Userdao udao=new Userdao();
		udao.closeConnection();
		System.out.println("THANK YOU!");
		
		sc.close();
	}
}
