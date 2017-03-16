<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin jsp</title>


<style>
input[type=password]
{
	width: 150px;
	height: 5px;
  padding: 15px;
   border: solid 1px #000000;  /* #dcdcdc */
   transition: box-shadow 0.3s, border 0.3s;
}

input[type=password]:focus,
input[type=password].focus
{
	
  border: solid 1px #707070;
  box-shadow: 0 0 5px 1px #969696;
} 

#intro-content {
    width: 930px;
    margin: 60px auto 0; 
    padding-left: 15%; 
  
}
#admin-logo 
{
	display: inline-block;
   text-indent: -9999em; 
    background-image: url(admin-2.png);
    background-repeat: no-repeat;
    width: 30%;
    height: 250px;
    padding: 0;
    float: left;
}
#intro-text 
{	  
    font-size: 48px;
    line-height: 43px;
    font-weight: 300;
    font-family: 'Lato', "Helvetica Neue", Helvetica, Arial, sans-serif;
    padding-top: 7%;
    padding-right: 25%;
    letter-spacing: 1px;
     float: center;
     
}
#sub-text {
    font-family: 'Lato', "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 22px;
    line-height: 20px;
    font-weight: 300;
    padding: 0;
    margin: 0 0 0;
    letter-spacing: -0.5px;
    float:center;
}

#passform
{
	padding-top: 5%;
	text-align: center;
	font-weight: 300;
	font-size: 25px;
}


input[type="submit"]
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
#field
{
	width: 40%;
	border-radius: 20px;
	margin-left: 27%;
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


</style>

<script type="text/javascript">
function myfunction()
{
	
	var a = document.getElementById("passcode").value.toString();
	if(a=="1234")
	{
		alert('Welcome Admin!');
		/* document.getElementById("passform").style.display = 'none';
		document.getElementById("adminfunc").style.display= 'block'; */
		 window.location.href="admin1.jsp"; 
	}
	else
	{
		alert('Sorry! Wrong password!');
		window.location.href="admin.jsp";
	}
	return false;
}

</script>
</head>


<body>
<div id="bg-extend">
		<div id="bg">
			<div id="header-nav">
				<div class="area-left">
					<a href="#about">About</a>
					 <a href="#help">Help</a>
				</div>

				<div class="area-right">
					<a href="index.jsp">Home</a> 
					 	
				</div>
			</div>
		</div>
	</div>
	<div>
		<div id="intro-content">
			<p id="admin-logo">Admin
		</div>
		<div>
			<h1 id="intro-text">Just Park</h1>
			<h5 id="sub-text">Trusted by over a million drivers</h5>
			</p>
		</div>
	</div>
	
	<div id="passform">
	<fieldset id="field">
	<form >

			<div>
				<br /> <label>Password:</label>
				<div id="inputbox">
					<input data-parsley-required="true" type="password" id="passcode"
						name="passcode" placeholder="Enter the passcode" />
				</div>
			</div>

			<br /> 
			
			<input type="submit" value="Authenticate!!" onclick="return myfunction()">

	</form>
	</fieldset>
	</div>
	
	
	
</body>
</html>