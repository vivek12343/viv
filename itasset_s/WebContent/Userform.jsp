<%@page import="java.sql.*" %>
<%@page import="com.ibm.dao.*" %>
<%@page import="com.ibm.controller.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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


<form action="FormServlet" method="post">
 <h1>
   Form to request service
   
  </h1> <h1> &nbsp;<a href ="index.html" style=float:right;color:black; >HOME</a>
   </h1>
  
  <div class="float-label">
    <input type="text" name="uname" id="f-name" placeholder="Username"/>
   
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
     <%

  ProjectDao obj=new ProjectDao();
 ResultSet rs=obj.FetchAllService();
 
%>
   <select name="issue_type" id="issue-type" style=color:black;>
<option>select service</option>



      
    <%     int i=0;
        while(rs.next()) {%>
           
               <option>
             <%=rs.getString(2) %>
             </option>
             
               
            
      
     <% i++; } %>
     <div class="float-label">
    <input type="text" name="address" id="f-name" placeholder="address"/>
   
  </div>
     
       </select></div>
    
<input type="submit" value="register" size="30" class="btn" onclick="alert('ur request is taken ,very soon u will get an agent to your location to serve your problem')"/>
 <button class="btn" id="clear" type="reset" value="Reset">Reset</button>
</form>








</body>
</html>