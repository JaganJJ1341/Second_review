<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="com.usermain.parking.*,com.slots.parking.*,com.parkinfo.parking.*,java.sql.*,java.util.*,java.math.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validating User</title>


<style>

.email-signup
{
	margin-top: 5%;
	color: #000000;
	font-weight: 300;
	font-size: 20px;
}
.email-signup input[type="submit"]
{
	border: none;
	display: inline-block;
	outline: 0;
	padding: 10px 16px;
	vertical-align: middle;
	overflow: hidden;
	text-decoration: none !important;
	color: #fff;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	white-space: nowrap;
}
.fs
{
	width: 40%;
	border-radius: 20px;
}
#top
{
	margin-top: 100px;
}

input[type=text]
{
	height: 10px;
	width: 100px;
	padding: 15px;
   border: solid 1px #dcdcdc;
   transition: box-shadow 0.3s, border 0.3s;
}
</style>
</head>
<body>

<%  
	Userapp umain=new Userapp();
	int uid=Integer.parseInt(request.getParameter("uid"));
	String s=String.valueOf(uid);
	 pageContext.setAttribute("userid",s,PageContext.SESSION_SCOPE);
	 
	 
	String result=umain.validate(uid);
	
	
	if(result.length()<=20)
	{%>
		
		<div>
		<center>
		 <div id="top"></div>
			<h1>Hey! You are back :)</h1>
			<br>
			<h2>Welcome!&nbsp<%=result%></h2>
			<br>
			<h3>Share your details..</h3>
	     </div>
      
			<div class="email-signup" align="center">
			
			<fieldset class="fs">
				<form autocomplete="off" action="park.jsp" autocomplete="false" method="GET">
					<div>
						<br /> <label>Vehicle Number</label>
						<div>
							<input data-parsley-required="true" type="text" id="vnum"
								name="vnum" placeholder="Eg: TN29AB1234" />
						</div>
					</div>

					<div>
						<br /> <label>Vehicle Type</label>
						<div>
							<select name="vtype">
								<option value="car">Four Wheeler - Car</option>
								<option value="bike">Two Wheeler</option>
								<option value="bus">Bus</option>
							</select>
						</div>
					</div>
					<br>
					<br>

					<input type="submit" value="Get ME a Parking Slot!">


				</form>
				</fieldset>
		</center>
	</div>
	
		<% 
	}
	else if(result.charAt(0)=='S')
	{ %>
	
	
			
			
		    <script>alert('Hey! We would like to meet new people!<br>Pls register urself');</script>
			<jsp:include page="signup.jsp" />  
		<%-- 	<jsp:include page="signup.jsp"></jsp:include>--%>	    
		
	<% 
	}
	else if(result.charAt(0)=='O')
	{  %>
	
		<script>alert('Hey! Sorry..All parking slots are filled for now');</script>
			<jsp:include page="index.jsp" />  
	
	
	<% 
	}
	%>

	


</body>
</html>