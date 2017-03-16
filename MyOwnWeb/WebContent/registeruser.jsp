<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.usermain.parking.*,java.util.*,java.math.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>

<style>
	.display
	{
	 	
	 	margin-top: 50px;
	}
	
	 #bg {
    width: 100%;
    height: 100%;
    font-size: 48px;
	}

#header-nav {
    padding-top: 100px;
    width: 600px;
    margin: 0 auto;
    color: #000000;
    font-size: 12px;
}
#header-nav .button-grey {
    display: inline-block;
    background-color: #737373;
    margin-right: 0 !important;
    padding: 0 20px
}

#header-nav a {
    color: #000000;
    margin-right: 17px;
    font-family: 'Montserrat', "Helvetica Neue", Helvetica, Arial, sans-serif;
    text-decoration: none;
    font-size: 20px;   
}

#header-nav .area-left {
    float: left
}

#header-nav .area-right {
    float: right
}

#intro-content {
    width: 930px;
    margin: 60px auto 0;
    text-align: center;

    color: #000000
}
#home-logo {
    text-indent: -9999em;
    background-image: url(logo.jpg);
    background-repeat: no-repeat;
    width: 90%;
    height: 250px;
    margin-left: 10%;
    
}
#intro-text {
    font-size: 48px;
    line-height: 43px;
    font-weight: 300;
    font-family: 'Lato', "Helvetica Neue", Helvetica, Arial, sans-serif;
    padding: 0;
    margin: 50px 0 0;
    letter-spacing: 1px;
}
#sub-text {
    font-family: 'Lato', "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 22px;
    line-height: 20px;
    font-weight: 300;
    padding: 0;
    margin: 15px 0 0;
    letter-spacing: -0.5px;
}
 

</style>

</head>
<body>

<div id="bg-extend">
		<div id="bg">
			<div id="header-nav">
				<div class="area-left">
					<a href="#about">About</a>
					 <a href="">Help</a>
				</div>

				<div class="area-right">
					<a href="index.jsp">Home</a> 
					<a href="login.jsp">CheckIn</a>
				</div>
			</div>
		</div>
	</div>

 <% 
UserBean ubean=new UserBean();
Userdao udao=new Userdao();
ubean.setUser_name(request.getParameter("first_name"));
ubean.setUser_mail(request.getParameter("email"));
ubean.setUser_phone(Long.parseLong(request.getParameter("number")));

Random rand = new Random();
int uid = rand.nextInt((100 - 1) + 1) + 1;

ubean.setUser_id(uid);


int userid=udao.registeruser(ubean);

%>

 
 <div id="intro-content">
				<p id="home-logo">JustPark</p>
				<h1 id="intro-text">Thank u for joining us!</h1><br>
				<p id="sub-text">Your user id is:<%=userid %></p>				
			</div>
			
			
<%-- <div class="display">
<center>
Thank u for registering with us :) <br> Your user id is: <%=userid %>
</center>
</div> --%>

</body>
</html>


<!-- PrintWriter out = response.getWriter();
out.write("<html><body><h1>gfsdfgsdefsdfsdfRegistered Successfully.!! </h1><b><p>User ID is :</p>"+"<b><p>"+userbean.getUser_id()+"</p></body></html>");
out.write("<html><body>");
out.write("<b>hello simple second servlet </b>");
out.write("</body></html>");  -->