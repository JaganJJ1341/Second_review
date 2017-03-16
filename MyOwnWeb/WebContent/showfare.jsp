<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.usermain.parking.*,java.util.*,java.math.*,com.parkinfo.parking.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show fare</title>

<style>
.showdetails
{
	text-align: center;
    margin-top: 50px;
}

#bg {
    width: 100%;
    height: 100%;
    font-size: 48px;
}

#header-nav {
    padding-top: 25px;
    width: 500px;
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

#header-nav .caret {
    border-top-color: #fff;
    border-bottom-color: #fff;
    margin-top: 10px
}
.showdetails
{
	margin-left: 35%;
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 50%;
    
}

td, th {
    border: 2px solid #dddddd;
    text-align: center;
    padding: 10px;
   
}

tr:nth-child(even) 
{
    background-color: #dddddd;
}

#intro-content {
    width: 930px;
    margin: 60px auto 0;
    text-align: center;
    color: #000000
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
					
				</div>
			</div>
		</div>
		
		
		<div id="intro-content">
				<h1 id="intro-text">Find parking in seconds</h1>
				<p id="sub-text">Your fare Details!</p>				
			</div>
	</div>
 <%

String rid=request.getParameter("rid");
int randomid=Integer.parseInt(rid);
List<ParkingBean> details = new ArrayList<ParkingBean>();
Userapp uapp=new Userapp();

details=uapp.updatefare(randomid);
Iterator itr=details.iterator();
ParkingBean pp= (ParkingBean)itr.next();
%>



<div class="showdetails">

  <table>
  <tr>
 
  </tr>
  <tr>
    <td>Parking Id :</td>
    <td><%=pp.getRandom_id() %></td>
  </tr>
  
  <tr>
    <td>User Id :</td>
    <td><%= pp.getUser_id() %></td>
  </tr>
  
  <tr>
    <td>Vehicle Type :</td>
    <td><%= pp.getVehicle_type() %></td>
  </tr>
  
  <tr>
    <td>Vehicle Number :</td>
    <td><%= pp.getVehicle_number()%></td>
  </tr>
  
  <tr>
    <td>Slot number :</td>
    <td><%= pp.getSlot_number()%></td>
  </tr>
  
  <tr>
    <td><b>Fare to be paid :</b></td>
    <td><b>Rs.<%= pp.getParking_fare() %></b></td>
  </tr>
</table>

	<%-- Parking Id: <%=pp.getRandom_id() %><br>
	User Id: <%= pp.getUser_id() %> <br>
	Vehicle Type: <%= pp.getVehicle_type() %> <br>
	Vehicle Number: <%= pp.getVehicle_number()%> <br>
	Slot number: <%= pp.getSlot_number()%><br>
	Fare to be paid: <%= pp.getParking_fare() %><br> --%>

</div>


</body>
</html>