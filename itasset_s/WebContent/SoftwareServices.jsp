<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<style type="text/css">
p{width:780px;}
 td{height:200px;width:300px;background-color:blue; }</style>
  <title>
    Services
  </title>
  <link rel="stylesheet" type="text/css" href="webpage.css">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet"></head>
<body> <div class="container">
    <div id="brand">
      <h1>SOFTWARE SERVICES </h1>
    
    </div> <h1> &nbsp;<a href ="index.html" style=float:right;color:black; >HOME</a>
 
</h1></div>
<div float="left" width ="">

<section class="sec">

  
    
    <article class="services">
   
     <div>
      <iframe width="800" height="240" style="background-image:url(img/showcase.jpg)"class="video">
                    
                </iframe>
	   </div>
	   <div class="jumbotron">
        <h3><a href="Userform.jsp">Inadequate software performance</a></h3>
        <p>performance testing is in general, a testing practice performed to determine how a system performs </p><p>in terms of responsiveness and stability under a particular workload. It can also serve to investigate, measure, validate or verify other quality attributes of the system, such as scalability, reliability and resource usage.</p>
        <p>Pricing: Rs.2000 and as per the problem </p>
      </div>

      <div class="jumbotron">
        <h3><a href="Userform.jsp">OS Installation</a></h3>
        <p>Installation of every OS whether windows,linux or Mac will be done.</p>
        <p> Pricing: Rs.</p>
      </div>
	  <div class="jumbotron">
        <h3><a href="Userform.jsp">Handling Virus Problems</a></h3>
        <p>If your system is troubling you due to viruses. We will help you to rid of that problem.</p>
        <p>Pricing: Rs.1,000 - Rs.3,000</p>
      </div>
	  <div class="jumbotron">
        <h3><a href="Userform.jsp">Antivirus Installation</a></h3>
        <p>Installing of anti viruses according to your system requirements</p>
        <p>Pricing: Rs.1,000 - Rs.3,000</p>
      </div>
	  <div class="jumbotron">
        <h3><a href="Userform.jsp">Firewall Problems</a></h3>
        <p>Any problem related to firewall will be handled.</p>
        <p>Pricing: Rs.1,000 - Rs.3,000</p>
      </div>
      </article>
 
</section>
 </div>
  <div class="container" style=background-color:black;float:right;height:1000px;width:300px;margin-top:0px;>
<h2 style=background-color:white;>try these vidios to serve your software problems </h2>
<marquee direction="down" scrollamount ="6"onmouseover="this.stop()" onmouseout="this.start()" height="1000px">
  <table><tr><td><img src="images/s1.png" height="200px" width="300px" aalu="8XTLU5Lv4Hc" /></td></tr>
	                        <tr><td><img src="images/s2.png" height="200px" width="300px" aalu="3o9ogu53awE" /></td></tr>
	                        <tr><td><img src="images/s3.jpg" height="200px" width="300px" aalu="oXQjMn-r1vQ" /></td></tr>
	                        <tr><td><img src="images/s4.jpg" height="200px" width="300px" aalu="daNUxkXRzoI" /></td></tr>
	                     <tr><td><img src="images/s5.png" height="200px" width="300px" aalu="oATW4NcBvio" /></td></tr>
	                  
	                    </table>
</marquee>
  </div>

</body>
</html>