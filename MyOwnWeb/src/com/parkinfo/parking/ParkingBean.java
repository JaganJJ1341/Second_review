package com.parkinfo.parking;

public class ParkingBean {
	
	private int random_id,user_id,slot_number;
	private String vehicle_type,vehicle_number;
	private float parking_fare;
	private String checkin,checkout;
	
	public int getRandom_id() {
		return random_id;
	}
	public void setRandom_id(int random_id) {
		this.random_id = random_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getSlot_number() {
		return slot_number;
	}
	public void setSlot_number(int slot_number) {	
		this.slot_number = slot_number;
	}
	public String getVehicle_type() {
		
		return vehicle_type;
	}
	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}
	public String getVehicle_number() {
		
		return vehicle_number;
	}
	public void setVehicle_number(String vehicle_number) {
		
		this.vehicle_number = vehicle_number;
	}
	public float getParking_fare() {
		return parking_fare;
	}
	public void setParking_fare(float parking_fare) {
		this.parking_fare = parking_fare;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}	
}
