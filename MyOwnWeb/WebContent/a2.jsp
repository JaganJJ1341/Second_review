<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.usermain.parking.*,com.parkinfo.parking.*,java.sql.*,java.util.*,java.math.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>a2 JSP</title>
<link rel="stylesheet" type="text/css" href="commonfile.css" />

<style>
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

#tab
{
padding-left: 30%;
padding-top: 20%;

}

#above
{
	padding-top: 5%;
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
				    <a href="admin1.jsp">Admin Home</a>
					<a href="admin.jsp">Logout</a>
				</div>
			</div>
		</div>
	</div>

<div id="above">
		<div id="intro-content">

			<h1 id="sub-text">History of a Specific User</h1>

		</div>
<div id="tab">
		<table>
			<tr>
				<th>Parking Id</th>
				<th>User Id</th>
				<th>Vehicle Type</th>
				<th>Vehicle Number</th>
				<th>Slot number</th>
				<th>Fare to be paid</th>
			</tr>

<%
int uid=Integer.parseInt(request.getParameter("uid"));
Userapp uapp=new Userapp();
List<ParkingBean> result=uapp.fetchHistory(uid);
System.out.println("sfdiooij-=de0fr-e9-f"+result.size());
if(result!=null)
{
Iterator<ParkingBean> itr =  result.iterator();
while(itr.hasNext())
{
	ParkingBean parkbean  = itr.next();
%>

			<tr>
				<td><%=parkbean.getRandom_id() %></td>

				<td><%=parkbean.getUser_id() %></td>

				<td><%=parkbean.getVehicle_type() %></td>

				<td><%=parkbean.getVehicle_number() %></td>

				<td><%=parkbean.getSlot_number() %></td>

				<td><b>Rs.<%= parkbean.getParking_fare() %></b></td>
			</tr>
		

		<%
}
%>
</table>


</div>
<%
}
else
{%>
	<script>alert('Entered UserId is wrong..please enter correct userId');</script>
	<jsp:forward page="adminfunc2.jsp" />
<%
}

%>

</body>
</html>