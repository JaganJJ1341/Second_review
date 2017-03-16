package com.userserv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.parkinfo.parking.Parkapp;
import com.parkinfo.parking.ParkingBean;
import com.slots.parking.Slotdao;

/**
 * Servlet implementation class UserPark
 */
@WebServlet("/UserPark")
public class UserPark extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserPark() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		out.write("<html><body><h1>gfsdfgsdefsdfsdfRegistered Successfully.!! </h1><b><p>User ID is :</p><b></body></html>");
		
		
		/*Parkapp pd=new Parkapp(); 
		ParkingBean parkbean=new ParkingBean();
		
		parkbean.setVehicle_type(request.getParameter("vnumber"));
		parkbean.setVehicle_number(request.getParameter("vtype"));
		
		int randomNum = rand.nextInt((1000 - 100) + 1) + 100;
		parkbean.setRandom_id(randomNum);
		
		parkbean.setUser_id(userandom);
		
		Slotdao sd=new Slotdao();
		parkbean.setSlot_number(sd.assignslot(randomNum));
		
		parkbean.setParking_fare(0);
		
		parkdao.insert(parkbean);*/	
	}

}
