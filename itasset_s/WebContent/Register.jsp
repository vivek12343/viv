<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="assets/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function()
		{
	           
	            $("#captcha").load("captcha.jsp");
	            $("#clickme").click(function()
	            		{
	            	         $("#captcha").load("captcha.jsp");
	            	
	            		});
		});

</script>

      <link rel="stylesheet" href="css/style.css">

  
<link rel="shortcut icon" href="reg.jpeg">
<style>
.a{width:400px;}
input {width:400px;}
select {width:400px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>it assets</title>
</head>


<body>



<form action="RegServlet" method="post">
 <h1>
    Create User Profile
   
  </h1> <h1> &nbsp;<a href ="index.html" style=float:right;color:black; >HOME</a>
   </h1>
  
  <div class="float-label">
    <input type="text" name="uname" id="f-name" placeholder="Username"/>
   
  </div>
<div class="float-label">
    <input type="password" name="pwd" id="f-name" placeholder="password"/>
   
  </div>
<div class="float-label">
    <input type="text" name="dname" id="f-name" placeholder="devicename"/>
   
  </div>
<div class="float-label">
    <input type="email" name="email" id="f-name" placeholder="abc@gmail.com"/>
   
  </div>
<div class="float-label">
    <input type="text" name="contact" id="f-name" placeholder="Contact"/>
   
  </div>
<div class="float-label">
<textarea rows="10" cols="10" name="issue" class="a" placeholder="write your problem"></textarea>

</div>
 <div class="float-label">
      <i class="fa fa-caret-down"></i>
      <select name="city" id="city" style=color:black;>
<option>select city</option>
<option>lucknow</option>
<option>kanpur</option>
<option>noida</option>
<option>delhi</option>
<option>gaziabad</option>
</select></div>
 <div class="float-label">
      <i class="fa fa-caret-down"></i>
      <select name="issue_type" id="issue-type" style=color:black;>
<option>select issue</option>
<option>hardware related</option>
<option>software installation related</option>
<option>window installation </option>
<option>driver</option>

</select></div>
 <div class="float-label">
      <i class="fa fa-caret-down"></i>
      <select name="sques" id="ques" style=color:black;>
                                        <option value="" >Select security ques?</option>
                                        <option value="0">What is your birth place?</option>
                                        <option value="1">What is your pet name?</option>
                                        <option value="2">What is your favourite teacher's name?</option>
                                        <option value="3">When did you first go to school?</option>
                                        <option value="4">What is your favourite color?</option>
                                        <option value="5">What is your favourite food?</option></select>
                 </div>
      
           <div class="float-label">
                        
                        <input type="text" name="sans" value="" size="50" placeholder="type your ans" />
                    </div>
                    
                          
  CAPTCA  <div id="captcha"  style=hight:20px;width:150px;background-color:blue;>
          </div> 
    <br>
 <div class="float-label">
      <i class="fa fa-caret-down"></i>
    <input type="text" name="capcap"  /> </div><br>
    <a href="#" id="clickme">new Captcha</a>
    
<input type="submit" value="register" size="30" class="btn" />
 <button class="btn" id="clear" type="reset" value="Reset">Reset</button>
</form>

</body>
</html>
