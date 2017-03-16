<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.usermain.parking.*,com.slots.parking.*,com.parkinfo.parking.*,java.sql.*,java.util.*,java.math.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign slot</title>

<style>
	.info
	{
	 text-align: center;
	 margin-top: 100px;
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

</style>

  <script>
  
function myFunction() {
	alert('U r being redirected to home page');
    setTimeout(function(){  window.location.href = 'index.jsp'; }, 10000);
}

</script>
</head>

<body onload="myFunction()">

<div id="bg-extend">
		<div id="bg">
			<div id="header-nav">
				<div class="area-left">
					<a href="#about">About</a>
					 <a href="">Help</a>
				</div>

				<div class="area-right">
					<a href="index.jsp">Home</a> 
					<a href="checkout.jsp">CheckOut</a>
				</div>
			</div>
		</div>
	</div>
	
<%
 
String name=(String)pageContext.getAttribute("userid",PageContext.SESSION_SCOPE);  
int uid=Integer.parseInt(name);
Random rand = new Random();
int randomNum=0;
ParkingBean parkbean=new ParkingBean();
parkbean.setUser_id(uid);

String vnumber=request.getParameter("vnum"); 
parkbean.setVehicle_number(vnumber);

String vtype=request.getParameter("vtype");
parkbean.setVehicle_type(vtype);

randomNum = rand.nextInt((1000 - 100) + 1) + 100;
parkbean.setRandom_id(randomNum); 

Slotdao sd=new Slotdao();
int slotnum=sd.assignslot(randomNum);
parkbean.setSlot_number(slotnum);

parkbean.setParking_fare(0);

Parkapp parkapp=new Parkapp();
parkapp.park(parkbean);

%>

<div class="info">
<h1>Your Parking Id is :<%=randomNum %></h1><br>
<h1>You can park in Slot number : <%=slotnum %></h1><br><br>
<i>Note your Parking id & slot number...Thank u!</i>
</div>


</body>
</html>



