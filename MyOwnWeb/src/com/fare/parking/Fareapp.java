package com.fare.parking;

public class Fareapp {

	float fare;
	
	public float calculatefare(FareBean fareBean)
	{
		String type=fareBean.getType();
		int dur=fareBean.getDuration();
		
		System.out.println("Duration of parking is :"+dur+" minutes");
		switch(type.toUpperCase())
		{
			case "BIKE":
				fare=5*dur;
				break;
			
			case "CAR":
				fare=10*dur;
				break;
			
			case "BUS":
				fare=15*dur;
				break;
		}
		
		return fare;
	}
}
