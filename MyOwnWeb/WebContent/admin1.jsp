<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<style>

#intro-text {
    font-size: 35px;
    line-height: 43px;
    font-weight: 300;
    font-family: 'Lato', "Helvetica Neue", Helvetica, Arial, sans-serif;
    padding-left: 35%;
    margin: 90px 0 0;
    letter-spacing: 1px;
}


input[type="button"]
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
	margin: 10px auto;
	
}
#header-nav {
    padding-top: 5%;
    width: 620px;
    margin: 0 auto;
    color: #fff;
    font-size: 12px;
}

#header-nav a {
    color: #000000;
    margin-right: 17px;
    font-family: 'Montserrat', "Helvetica Neue", Helvetica, Arial, sans-serif;
    text-decoration: none;
    font-size: 20px;   
}

#header-nav .area-left {
    float: left;
}

#header-nav .area-right {
    float: right;
}

#image
{
	float: left;
	width: 60%;
	padding-left: 2%;
}

#adminfunc
{
	display: inline-block;	
	padding-right: 13%;
	float: right;
	
}
#page
{
	padding-top: 5%;
}
#date
{
	font-size: 20px;   
	color: #000000;
	font-family: 'Montserrat', "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-style: italic;
}

#footer 
{
	margin-top: 29%;
	padding-left: 39%;
}


</style>

<script type="text/javascript">

function showdate()
{
	var d = new Date();
	
	document.getElementById('date').innerHTML = d.toUTCString();
}

function adminfunc1()
{
	window.location.href="adminfunc1.jsp";
}
function adminfunc2()
{
	window.location.href="adminfunc2.jsp";
}
function adminfunc3()
{
	window.location.href="adminfunc3.jsp";
}
function adminfunc4()
{
	window.location.href="adminfunc4.jsp";
}
function adminfunc5()
{
	window.location.href="adminfunc5.jsp";
}

</script>
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
					<a href="index.jsp">Home</a> 
					<a href="admin.jsp">Logout</a>
				</div>
			</div>
		</div>
	</div>
	
	<h1 id="intro-text">Hey Admin! you are back :)</h1>
				
	<div id="page">		
	<div id="image">
		<img src="Admin-1.jpg" width="90%" height="50%" >
	</div>
	
	<div id="adminfunc">
	
		<div id="b1">
			<input type="button"
				value="Total Fare in specific month & Number of Customers"
				onclick="adminfunc1()">
		</div>

		<div id="b2">
			<input type="button" value="History of a Specific User"
				onclick="adminfunc2()">
		</div>

		<div id="b3">
			<input type="button" value="Deleting a user account"
				onclick="adminfunc3()">
		</div>

		<div id="b4">
			<input type="button" value="Transactions on particular date"
				onclick="adminfunc4()">
		</div>

		<div id="b5">
			<input type="button" value="Number of users registered in a month"
				onclick="adminfunc5()">
		</div>
	</div>
	</div>
	
	
	<div id="footer">
	<p id="date"></p>
	</div>

	
</body>
</html>