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
  <title>
    Hardware Services
  </title>
  <link rel="stylesheet" type="text/css" href="webpage.css">
  <link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet">
<body><div class="container">
    <div id="brand">
      <h1>HARDWARE SERVICES	</h1>
       
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
	   <div class="jumbotron">
        <h3><a href="Userform.jsp">Issues Related To Input Output Devices</a></h3>
        <p>Any issue realted to input devices or output devices is there we will resolve it. New products are also provided according to the compatibility of your system.</p>
        <p>Pricing: Rs.2000 and as per the problem </p>
      </div>

      <div class="jumbotron">
        <h3><a href="Userform.jsp">USB and Port Connectivity Issues</a></h3>
        <p>You will get appropriate solution for your port or USB related problems. New USB devices or hard drives will also get provided at reasonable prices.</p>
        <p> Pricing: As per the issue</p>
      </div>
	  <div class="jumbotron">
        <h3><a href="Userform.jsp">Motherboard Problems</a></h3>
        <p>Any issue related to motherboard will be resolved.</p>
        <p>Pricing: Rs.1,000 - Rs.3,000 and as per the problem</p>
      </div>
	  <div class="jumbotron">
        <h3><a href="Userform.jsp">CPU Problems</a></h3>
        <p>All the problems related to CPU will be resolved.</p>
        <p>Pricing: Rs.1,000 - Rs.3,000</p>
      </div>
	  <div class="jumbotron">
        <h3><a href="Userform.jsp">Other Hardware Issues</a></h3>
        <p> If there is any other hardware related problem, you can tell us and we will provide a solution for it.</p>
        <p>Pricing: As per the problem.s</p>
      </div>
      </article>
  </div>
</section>

  <div class="container" style=background-color:black;float:right;height:1000px;width:300px;margin-top:0px;>
<h2 style= background-color:white;>try these vidios to serve ur problems</h2>
<marquee direction="down" scrollamount ="6"onmouseover="this.stop()" onmouseout="this.start()" height="1000px">
  <table><tr><td><img src="images/h2.jpg" height="200px" width="300px" aalu="hErHY8sveiU" /></td></tr>
	                        <tr><td><img src="images/h3.jpg" height="200px" width="300px" aalu="8Y_78eDEQyY" /></td></tr>
	                        <tr><td><img src="images/h4.jpg" height="200px" width="300px" aalu="L3UyLz34n3E" /></td></tr>
	                     <tr><td><img src="images/h5.jpg" height="200px" width="300px" aalu="rgh1k3J8yQc" /></td></tr>
	                     <tr><td><img src="images/h4.jpg" height="200px" width="300px" aalu="O0IDxfQviys" /></td></tr>
	                    
	                    
	                    </table>
</marquee>
  </div>



</html>