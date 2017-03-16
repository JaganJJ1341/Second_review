<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Checkout JSP</title>

<style>

body
{
	 background-image: url(chckout.jpg);
    background-repeat: no-repeat;
    background-size: cover;
}
#bg {
    width: 100%;
    height: 100%;
    font-size: 48px;   
}

#header-nav {
    padding-top: 60px;
    width: 500px;
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
	margin-top: 100px;
	width: 40%;
	border-radius: 20px;
}

input[type=text]
{
	width: 100px;
	height: 10px;
  padding: 20px;
   border: solid 1px #dcdcdc;
   transition: box-shadow 0.3s, border 0.3s;
}

#hello
{
	border:1px solid #ffffff;
  	color:#000000;
  	font-size:25px;
  	text-align: center;
  	border-radius: 10px;
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
				</div>
			</div>
		</div>
	</div>
	
	<div class="email-signup" align="center">
		<fieldset class="fs">
			<legend id="hello">Welcome Back!</legend>
			<form action="showfare.jsp" autocomplete="off">
				<br/>
				<div>
					<br /> <label>Parking Id</label><br/>
					<div id="inputbox">
						<input data-parsley-required="true" type="text" id="rid" name="rid" placeholder="Enter Parking Id" />
					</div>
				</div>

				<br><br>

				<input type="submit" value="Get ME My fare!!">

			</form>
			
		</fieldset>
	</div>
	




</body>
</html>