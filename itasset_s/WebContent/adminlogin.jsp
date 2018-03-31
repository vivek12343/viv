<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Admin Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href=login/"fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href=login/"fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login/css/util.css">
	<link rel="stylesheet" type="text/css" href="login/css/main.css">
<!--===============================================================================================-->
</head>
<body><center>
<h1 style="background-image: url('itasset21.png'); color:black;">IT ASSETS &nbsp;<a href ="index.html" style=float:right;color:black;>HOME</a></h1>
</center>

<div class="limiter">

		<div class="container-login100" style="background-image: url('itasset21.png');">
					
		<div class="wrap-login100 p-t-50 p-b-30">
					<div class="login100-form-itasset21" ><img src="itasset21.png" alt="ITASSET21" width="350"></div>
									
   <form action="AdminLoginServlet" method="post">
        
					<div class="wrap-input100 validate-input m-b-10" data-validate = "uname is required">
						<input class="input100" type="text" name="uname" placeholder="Username">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Pwd is required">
						<input class="input100" type="password" name="pwd" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10">
						<input type="submit" value="Login" class="login100-form-btn"/>
						
						
						
					</div>
   </form>
   
 <%
   if(request.getParameter("var")!=null)
   {
	   out.println("<font color=red>"+request.getParameter("var")+"</font>");
   }
 
 %>  


					<div class="text-center w-full p-t-25 p-b-230" style=height:50px;>
						<a href="#" class="txt1">
							Forgot Username / Password?
						</a></div></div></div></div></body></html>