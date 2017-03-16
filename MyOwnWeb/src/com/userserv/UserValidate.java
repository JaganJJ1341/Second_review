package com.userserv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.parkinfo.parking.Parkapp;
import com.parkinfo.parking.ParkingBean;
import com.parkinfo.parking.Parkingdao;
import com.slots.parking.Slotdao;
import com.usermain.parking.Userdao;

/**
 * Servlet implementation class demoservelet
 */
@WebServlet("/demoservelet")
public class UserValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserValidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*
		PrintWriter pw = response.getWriter();
		pw.write("<html><body>");
		pw.write("<b>hello simple second servlet </b>");
		pw.print("<p> Hii "+request.getParameter("name"));
		pw.write("</body></html>");*/
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		try {
			validate(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	public void validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException
	{
		Slotdao slotdao=new Slotdao();
		Userdao usrdao=new Userdao();
		Parkingdao parkdao=new Parkingdao();
		ResultSet rs=null;
		String username="";
		PrintWriter out = response.getWriter();
		
		if(slotdao.checkSlotStatus())
		{
			int userandom=Integer.parseInt(request.getParameter("userid"));
			rs=usrdao.login(userandom);
			Random rand=new Random();
			if(rs.next()!=false)
			{
					username=rs.getString(1);
					out.write("<html><head><script type='text/javascript'> document.getElementById('printdemo').innerHTML= 'Welcome!'"+rs.getString(1)+"</script></head></html>");
					
					RequestDispatcher rd=request.getRequestDispatcher("/Frontpage1.html");  
					rd.include(request, response);		
			}
			else
			{
				out.write("<html><body><h1>gfsdfgsdefsdfsdf OOPS! Seems you have not registered...pls login after registering yourself! <b> Thank you!</h1> </body></html>");
				RequestDispatcher rd=request.getRequestDispatcher("/Frontpage.html");  
				rd.include(request, response);
			}
		}
		else
		{
			
			out.write("<html><body><h1>gfsdfgsdefsdfsdf Sorry! All parking slots are filled currenty</h1> </body></html>");
			
			RequestDispatcher rd=request.getRequestDispatcher("/Frontpage.html");  
			rd.include(request, response);
			//System.out.println("Sorry! All parking slots are filled currenty");
		}
	}

}
