package com.slots.parking;
import com.parkinfo.parking.*;

public class SlotBean 
{
	private int slot_number;
	private int slot_status;  // 1 --> OCCUPIED & 0 --> EMPTY
	
	public int getSlot_number() {
		return slot_number;
	}
	
	public void setSlot_number(int slot_number) {
		this.slot_number = slot_number;
	}
	
	public int getSlot_status() {
		return slot_status;
	}
	
	public void setSlot_status(int slot_status) {
		this.slot_status = slot_status;
	}
}