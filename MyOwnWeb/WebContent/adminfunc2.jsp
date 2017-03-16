<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin func2 JSP</title>
<link rel="stylesheet" type="text/css" href="commonfile.css" />
<script type="text/javascript">
function showdate()
{
	var d = new Date();
	
	document.getElementById('date').innerHTML = d.toUTCString();
}
</script>

<style>
input[type=number]
{
	width: 150px;
	height: 20px;
  padding: 15px;
   border: solid 1px #000000;  /* #dcdcdc */
   transition: box-shadow 0.3s, border 0.3s;
}

input[type=number]:focus,
input[type=number].focus
{
	
  border: solid 1px #707070;
  box-shadow: 0 0 5px 1px #969696;
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

#inputform
{
	padding-top: 8%;
	padding-left: 30%;
}

#subbutton
{
padding-left: 35%;
}

#inputbox
{
padding-left: 25%;
}

#content
{
padding-top: 0%;
padding-left: 3%;
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
    padding-left: 32%;

}
#fs
{
	width: 50%;
	border-radius: 20px;
	
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

			<h1 id="sub-text">History of a Specific User</h1>

		</div>
	</div>
	
	<div id="content">
	<div id="inputform">
	<fieldset id="fs">
		<form action="a2.jsp"  autocomplete="off">
			<label id="sub-text1">Enter the user id</label> <br> <br>
			<div id="inputbox">
				<input type="number" name="uid" id="uid" style="width: 50%"
					placeholder="UserId">
			</div>
			<br>
			<br>
			<div id="subbutton">
				<input type="submit" value="Get me reports!">
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