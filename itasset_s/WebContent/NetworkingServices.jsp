<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>

<script type="text/javascript" src="jquery.min.js"></script>
<link rel="stylesheet" href="mycss.css">
<script type="text/javascript">
$(document).ready(function()
{
         //  alert("hello");
           $("#headerdiv").hide();
           
           $("#upperdiv").click(function()
        		   {
        	           $("#headerdiv").slideToggle();
        	   
        		   });
           $("img").click(function()
        		   {
        	             var value=$(this).attr("aalu");
        	          //   alert(value);
        	             
        	             $(".video").attr("src","https://www.youtube.com/embed/"+value+"?autoplay=1");
        	             
        		   });
           
          
});
</script>
  <title>
    Network Services
  </title>
  <link rel="stylesheet" type="text/css" href="webpage.css">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet"></head>
<body> <div class="container">
    <div id="brand">
      <h1>NETWORK SERVICES </h1>
    </div> <h1> &nbsp;<a href ="index.html" style=float:right;color:black; >HOME</a>
   </h1>
   
  </div>
</header>


<div float="left" width ="">

<section class="sec">

  
    
    <article class="services">
   
     <div>
      <iframe width="800" height="240" style="background-image:url(img/showcase.jpg)"class="video">
                    
                </iframe>
	   </div> <div class="jumbotron">
        <h3><a href="Userform.jsp">IP Conflict</a></h3>
        <p>IP conflicts occur when two or more computers or devices (like a tablet) in the same network end up being assigned the same IP address.This problem will also get served.</p>
        <p>Pricing: Rs.2000 </p>
      </div>

      <div class="jumbotron">
        <h3><a href="Userform.jsp">Network Outage</a></h3>
        <p>A network outage is the loss of network resources, including routers, switches, and transport facilities. You will get solution to this problem.</p>
        <p> Pricing: As per the issue</p>
      </div>
	  <div class="jumbotron">
        <h3><a href="Userform.jsp">Connection Drops</a></h3>
        <p>If your wifi connection drops often you can seek us for help.There maybe several reasons for this. We will identify the appropriate reasons and wil help you to get rid of this problem.</p>
        <p>Pricing: Rs.1,000 - Rs.3,000 and as per the problem</p>
      </div>
	  <div class="jumbotron">
        <h3><a href="Userform.jsp">Router and Switch Configuration</a></h3>
        <p>If ypu have problem with the router or switches configuration, you will be helped by our agents.</p>
        <p>Pricing: Rs.1,000 - Rs.3,000</p>
      </div>
	  <div class="jumbotron">
        <h3><a href="Userform.jsp">Other NetworkingIssues</a></h3>
        <p> If there is any other network related problem, you can tell us and we will provide a solution for it.</p>
        <p>Pricing: As per the problem.s</p>
      </div>
      </article>
  </div>
</section>
 
  <div class="container" style=background-color:black;float:right;height:1000px;width:300px;margin-top:0px;>
<h2 style= background-color:white;>try these vidios to serve ur problems</h2>
<marquee direction="down" scrollamount ="6"onmouseover="this.stop()" onmouseout="this.start()" height="1000px">
  <table><tr><td><img src="images/n1.png" height="200px" width="300px" aalu="1WLX1fP2sGw" /></td></tr>
	                        <tr><td><img src="images/n2.jpg" height="200px" width="300px" aalu="u84o_yXdPcg" /></td></tr>
	                        <tr><td><img src="images/n3.png" height="200px" width="300px" aalu="WXbidC6q5-Y" /></td></tr>
	                        <tr><td><img src="images/n4.png" height="200px" width="300px" aalu="FmFqaVy3Fj4" /></td></tr>
	                     <tr><td><img src="images/n5.jpg" height="200px" width="300px" aalu="qdTWi8G4jYo" /></td></tr>
	                  
	                    </table>
</marquee>
  </div>


</body>
</html>