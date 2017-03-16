<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.usermain.parking.*,java.sql.*,java.util.*,java.math.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin1 jsp</title>
<link rel="stylesheet" type="text/css" href="commonfile.css" />
<script type="text/javascript">
function showdate()
{
	var d = new Date();
	
	document.getElementById('date').innerHTML = d.toUTCString();
}
</script>


<style>
#date
{
	font-size: 20px;   
	color: #000000;
	font-family: 'Montserrat', "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-style: italic;
}

#footer 
{
	margin-top: 13%;
	padding-left: 39%;
}
#above
{
	padding-top: 5%;
}
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 60%;
    font-size: 22px;
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
#restable
{
	padding-left: 28%;
	padding-top: 5%;
}

</style>
</head>
<body onload="showdate()">

<div id="bg-extend">
		<div id="bg">
			<div id="header-nav">
				<div class="area-left">
					<a href="#about">About</a>
					 <a href="">Help</a>
				</div>

				<div class="area-right"> 
				    <a href="admin1.jsp">Admin Home</a>
					<a href="admin.jsp">Logout</a>
				</div>
			</div>
		</div>
	</div>

<div id="above">
		<div id="intro-content">

			<h1 id="sub-text">Total Fare in specific month & Number of
				Customers</h1>

		</div>
		
		<% 
					int[] res=new int[3];
				 	int month=Integer.parseInt(request.getParameter("month"));
					Userapp uapp=new Userapp();
					res=uapp.calculateFareForMonth(month);
				%>
<div id="restable">

		<table>
			<tr>
				<td>Total Fare collected for this month is: </td>
				<td>Rs. <%=res[0]%></td>
			</tr>

			<tr>
				<td>Total Number of Parking: </td>
				<td><%=res[1]%></td>
			</tr>

			<tr>
				<td>Total number of registered users :</td>
				<td><%=res[2]%></td>
			</tr>
	
		</table>
	</div>
	
	
	<div id="footer">
	<p id="date"></p>
	<div id="copyrights">
	<p><i>Copyrights @JustPark</i></p>
	</div>
	</div>
		</body>
</html>