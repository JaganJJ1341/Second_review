<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>adminfunc1 jsp</title>
<link rel="stylesheet" type="text/css" href="commonfile.css" />

<script type="text/javascript">

function validatemonth()
{
	
	var month= parseInt(document.getElementById("month").value);	
	if( month > 0 && month < 13 )
	{
		alert('Entered month is valid!');
		return true;
	}
	else
	{
		alert('Entered month is invalid!');
		return false;
	}
	
	return false;
}

function showdate()
{
	var d = new Date();
	
	document.getElementById('date').innerHTML = d.toUTCString();
}
</script>

<style>

input[type=number]
{
	width: 200px;
	height: 20px;
  padding: 19px;
   border: solid 1px #000000;  /* #dcdcdc */
   transition: box-shadow 0.3s, border 0.3s;
}

input[type=number]:focus,
input[type=number].focus
{
	
  border: solid 1px #707070;
  box-shadow: 0 0 5px 1px #969696;
} 

#inputform
{
	padding-top: 8%;
	padding-left: 25%;
}

#subbutton
{
padding-left: 37%;
}
#inputbox
{
padding-left: 35%;
}
#above
{
	padding-top: 5%;
}
#content
{
padding-left: 1%;
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
	margin-top: 13%;
	padding-left: 39%;
}

#fs
{
	width: 60%;
	border-radius: 20px;
	
}
#sub-text1 
{
	padding-top: 50%;
	font-family: 'Lato', "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 22px;
    line-height: 20px;
    font-weight: 300;
    padding: 0;
    margin: 15px 0 0;
    letter-spacing: -0.5px;
    padding-left: 10%;

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
		
		
	</div>
	
	<div id="content">
	<div id="inputform">
	<fieldset id="fs">
		<form action="a1.jsp" onsubmit="return validatemonth()" autocomplete="off">
			<label id="sub-text1">Enter the month for which u want to
				calculate fare (MM):</label> <br> <br>
			<div id="inputbox">
				<input type="number" name="month" id="month" style="width: 40%"
					placeholder="Eg: for FEBRUARY - 2 ">
			</div>
			<br>
			<br>
			<div id="subbutton">
				<input type="submit" value="Get me reports!"">
			</div>
		</form>
		</fieldset>
	</div>

</div>

<div id="footer">
	<p id="date"></p>
	<div id="copyrights">
	<p><i>Copyrights @JustPark</i></p>
	</div>
	</div>
	
</body>
</html>