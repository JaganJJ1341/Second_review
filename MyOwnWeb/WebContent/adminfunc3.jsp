<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adminfunc3 JSP</title>

<link rel="stylesheet" type="text/css" href="commonfile.css" />

<script type="text/javascript">
function showdate()
{
	var d = new Date();
	
	document.getElementById('date').innerHTML = d.toUTCString();
}
</script>

<style>
/* body
{
    background-image: url(commonadmin.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    
} */
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
padding-left: 30%;
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

#form_wrapper
{
	width: 100%;
	height: 100%;
    background-repeat: no-repeat;
    background-size: cover;
   
  
    
}

</style>
</head>
<body onload="showdate()">

<!-- <div id="form_wrapper" style="background-image:url('commonadmin.jpg'); ">
</div> -->
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

			<h1 id="sub-text">Deleting a user account</h1>

		</div>
	</div>
	
	
	<div id="content">
	<div id="inputform">
	<fieldset id="fs">
		<form action="a3.jsp" autocomplete="off">
			<label id="sub-text1">Enter the user id</label> <br> <br>
			<div id="inputbox">
				<input type="number" name="uid" id="uid" style="width: 50%"
					placeholder="UserId">
			</div>
			<br>
			<br>
			<div id="subbutton">
				<input type="submit" value="Delete this user account!">
			</div>
			</fieldset>
		</form>
	</div>




<div id="footer">
	<p id="date"></p>
	<div id="copyrights">
	<p><i>Copyrights @JustPark</i></p>
	</div>
	</div>
	
	</div>

</body>
</html>