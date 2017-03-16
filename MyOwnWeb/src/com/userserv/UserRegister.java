package com.userserv;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.usermain.parking.UserBean;
import com.usermain.parking.Userdao;


/**
 * Servlet implementation class UserValidate
 */
@WebServlet("/UserValidate")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
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
		response.setContentType("text/html");
		registerUser(request,response);
	
	}
	
	public void registerUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		int userandom=0;
		Userdao udao=new Userdao();
		Random rand = new Random();
		
			UserBean userbean=new UserBean();
			
			String user=request.getParameter("Name");
			userbean.setUser_name(user);

			user=request.getParameter("Email");
			userbean.setUser_mail(user);

			long num=Long.parseLong(request.getParameter("mobilenumber"));
			userbean.setUser_phone(num);
			
			userandom = rand.nextInt((100 - 1) + 1) + 1;
			userbean.setUser_id(userandom);

			udao.registeruser(userbean);
			
			PrintWriter out = response.getWriter();
			out.write("<html><body><h1>gfsdfgsdefsdfsdfRegistered Successfully.!! </h1><b><p>User ID is :</p>"+"<b><p>"+userbean.getUser_id()+"</p></body></html>");
			
			out.write("<html><body>");
			out.write("<b>hello simple second servlet </b>");
			out.write("</body></html>");
		

			RequestDispatcher rd=request.getRequestDispatcher("/Frontpage.html");  
			rd.include(request, response);  
	
	}
}
