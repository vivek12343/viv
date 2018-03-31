<%@page import="java.sql.*" %>
<%@page import="com.ibm.dao.*" %>
<%@page import="com.ibm.controller.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="layout.css" type="text/css" />
<title>Insert title here</title>
</head>
<body id="top">
<div style=float:right;>
<a class="logout" href="logout.jsp" style=color:black;><img src="images/logout.jpg" height=40px width=40px /></a></div>



<div class="wrapper col1">

  <div id="topbar">
    <div id="social">
    <ul>
     <marquee onmouseover="this.stop()" onmouseout="this.start()">   <li><a href="#"><img src="images/bookmarks/rss.jpg" width="25" height="25" alt="" /></a></li>
        <li><a href="https://en-gb.facebook.com/login/" target="blank"><img src="images/bookmarks/facebook.jpg" width="25" height="25" alt="Add to: Facebook" /></a></li>
        <li><a href="https://del.icio.us/" target="blank"><img src="images/bookmarks/delicious.jpg" width="25" height="25" alt="Del.icio.us" /></a></li>
        <li><a href="https://www.stumbleupon.com/noload/noload.html?asset=https%3A%2F%2Fnb9-stumbleupon.netdna-ssl.com%2FFs9MBxyczWB7JNsrHngDLw&reason=default&branch=master&because=ab%20for%20https%20login%20test" target="blank"><img src="images/bookmarks/stumbleupon.jpg" width="25" height="25" alt="Stumbleupon" /></a></li>
        <li><a href="https://www.reddit.com/login" target="blank"><img src="images/bookmarks/reddit.jpg" width="25" height="25" alt="reddit" /></a></li>
        <li><a href="http://digg.com/register"target="blank"><img src="images/bookmarks/digg.jpg" width="25" height="25" alt="Digg" /></a></li>
        <li><a href="https://login.yahoo.com/"target="blank"><img src="images/bookmarks/yahoo.jpg" width="25" height="25" alt="Y! MyWeb" /></a></li>
        <li class="last"><a href="https://www.google.co.in/"target="blank"><img src="images/bookmarks/google.jpg" width="25" height="25" alt="Google" /></a></li>
       </marquee>
      </ul>
    </div>
    <div id="search">
      <form action="#" method="post">
        <fieldset>
          <legend>Site Search</legend>
       <!--   <input type="text" value="Search the site&hellip;"  onfocus="this.value=(this.value=='Search the site&hellip;')? '' : this.value ;" />
          <input type="submit" name="go" id="go" value="GO" />-->
        </fieldset>
      </form>
    
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="header">
    <div class="fl_left">
      <h1><a href="UpdateUser.jsp" style=align:right;><input type="button" name="edit" value="update profile" style= background-color:black;color:green;/></a></h1>
      <h1><a href="#">IT-ASSETS</a><h3> <a href="index.html">HOME</a></h3></h1>
    </div>
    <ul id="topnav">
     <li class="last" ><a href="ask.jsp">Discussion</a></li>
      <li ><a href="rough.jsp">Contact Us</a></li>
      <li><a href="#">Services</a>
	  <ul>
	  <li><a href="SoftwareServices.jsp">software Services</a></li>
          <li><a href="HardwareServices.jsp">Hardware Services</a></li>
          <li><a href="NetworkingServices.jsp">Network Services</a></li>
		  </ul>
	  </li>
      <li><a href="#">Support</a>
	  <ul>
	  <li><a href="Login.jsp">Sign Up</a></li>
          <li><a href="Agentlogin.jsp">Agent Login</a></li>
           <li><a href="adminlogin.jsp">Admin Login</a></li>
		  </ul>
		  </li>
      <li><a href="View.jsp">Product</a>
	 
           <li>
		  </ul>
	
      <li class="active"></li>
    </ul>
    <br class="clear" />
  </div>
</div>
<center>
<h1>Products</h1>

<table border="1" style='background: linear-gradient(to right, orange,white);border-style:outset;border-radius:0px 24px 0px 24px;opacity:0.8 '>

<%

  ProjectDao obj=new ProjectDao();
 ResultSet rs=obj.FetchAllProducts();
 int no=ProjectDao.CountServices();
 if(rs.next()){
%>
<%


int j,k=1;
for(int i=0;i<=no/4;i++)
{
%>
<tr>
<%
j=0;
while(j!=4)
{
	
if(k++>no)
{
break;	
}

%>
<td>
<center><h4><%=rs.getString(1) %></h4><h4><%=rs.getString(2) %></h4></center>
<center><h4><%=rs.getString(3) %></h4></center>
<center><h4> <img src="images/<%=rs.getString(4) %>" height="200px" width="200px"/><br></h4><center><h5><input type="submit" value="BUY" name="BUY" onclick="alert('this fascility is coming soon')" style='border-radius:10px;background:#ed872d' /></h5></td>
<%
rs.next();
j++;

}
%></tr>
<%
}}
%>
</table>

</body>
</html>