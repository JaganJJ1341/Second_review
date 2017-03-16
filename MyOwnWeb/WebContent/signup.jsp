<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup - JSP</title>

<link href='https://fonts.googleapis.com/css?family=Lato:300|Montserrat:400,700' rel='stylesheet' type='text/css'>
<style>
body
{
    background-image: url(loginimage.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    
}

#bg {
    width: 100%;
    height: 100%;
    font-size: 48px;
}

#header-nav {
    padding-top: 25px;
    width: 475px;
    margin: 0 auto;
    color: #fff;
    font-size: 12px;
}
#header-nav .button-grey {
    display: inline-block;
    background-color: #737373;
    margin-right: 0 !important;
    padding: 0 20px
}

#header-nav a {
    color: #ffffff;
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

#hello
{
	border:1px solid #ffffff;
  	color:#ffffff;
  	font-size:25px;
  	text-align: center;
  	border-radius: 10px;
}

.email-signup .intro a
{
	text-decoration: none;
	color: #ffffff;
}
.email-signup
{
	margin-top: 10%;
	color: #fff;
	font-weight: 300;
	font-size: 25px;
}

 input[type=text]
{
	height: 10px;
	width: 100px;
	padding: 15px;
   border: solid 1px #dcdcdc;
   transition: box-shadow 0.3s, border 0.3s;
}
  
input[type=email]
{
	height: 5px;
	width: 100px;
	padding: 15px;
   border: solid 1px #dcdcdc;
   transition: box-shadow 0.3s, border 0.3s;
}
  
input[type=text]:focus,
input[type=text].focus
{
	
  border: solid 1px #707070;
  box-shadow: 0 0 5px 1px #969696;
} 


input[type=email].focus
{
	
  border: solid 1px #707070;
  box-shadow: 0 0 5px 1px #969696;
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
				    
					<a href="login.jsp">CheckIn</a>
					 <a href="/MyOwnWeb/login.jsp">CheckOut</a>
					
				</div>
			</div>
		</div>
	</div>

	<div class="email-signup" align="center">
		<fieldset class="fs">
			<legend id="hello">Hurry! Join us!!</legend>
			<form action="registeruser.jsp" autocomplete="off" method="GET">
				<div>
					<label>Full name</label>
					<div class="controls">
						<span class="form-group"> <input value="" class="input-smedium phorm_field_name" placeholder="First name" data-parsley-required="true" id="id_first_name" name="first_name" type="text" />
						</span> <span class="form-group"> <input value=""
							class="input-smedium phorm_field_name" placeholder="Last name"
							data-parsley-required="true" id="id_last_name" name="last_name"
							type="text" />
						</span>

					</div>
				</div>


				<div>
					<br /> <label>Email address</label>
					<div>
						<input data-parsley-required="true" type="email" id="id_email"
							name="email" placeholder="Eg: xyz@mail.com" />
					</div>
				</div>

				<div>
					<br /> <label>Mobile Number</label>
					<div>
						<input data-parsley-required="true" type="text" id="number"
							name="number" placeholder="Eg: 1234567890" />
					</div>
				</div>

				<p class="intro">
					I have read and agree to the JustPark <a
						href="terms-and-conditions"><i>terms and conditions</i></a>
				</p>

				<input type="submit" value="Register me!">

			</form>
			
			<h5>Already registered! <a href="login.jsp">Click here!</a></h5>
		</fieldset>
	</div>





</body>
</html>