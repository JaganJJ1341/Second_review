package com.parkinfo.parking;

import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Scanner;

import com.slots.parking.Slotdao;

public class Parkapp {
	
	public void parkdetails(int uid)
	{
		ParkingBean pb=new ParkingBean();
		Parkingdao p=new Parkingdao();
		Random rand = new Random();
		int randomNum;
		String temp="";
		Scanner sc=new Scanner(System.in);
		
		System.out.println("Enter Vehicle Type (CAR / BIKE / BUS):");
		temp=sc.nextLine();
		pb.setVehicle_type(temp);
		
		System.out.println("Enter Vehicle number (Eg: TN29AB1234):");
		temp=sc.nextLine();
		pb.setVehicle_number(temp);
		
		randomNum = rand.nextInt((1000 - 100) + 1) + 100;
		pb.setRandom_id(randomNum);
		
		pb.setUser_id(uid);
		
		Slotdao sd=new Slotdao();
		pb.setSlot_number(sd.assignslot(randomNum));
		
		pb.setParking_fare(0);
		
		p.insert(pb);	
		
	}
	
	
}