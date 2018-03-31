<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="com.ibm.dao.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title> IT ASSETS</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
h1,h2{color:black;}

</style>
</head>
<body >

<%
   if(session.getAttribute("ADMIN")!=null){
%>


 <section id="container">
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg" style="background-color:indigo;">
          <table> <tr><td>  <div class="sidebar-toggle-box" >
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <div ></td><td>
<img src=images/admin.jpeg height=50px width=50px /></a></div></td>
          <td>  <a href="AdminPanel.jsp" class="logo"><b><strong> Welcome &nbsp; <%=session.getAttribute("ADMIN").toString() %>&nbsp; to Admin panel </strong></b></a>
            <!--logo end--></td><td></td>
            <td></td>
           
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li ><a class="logout" href="AdminLogout.jsp"><img src="images/logout.jpg" height=40px width=40px /></a></li>
            	</ul>
            </div></td></tr></table> 
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse" style="background-color:blue;">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              	  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Welcome</span>                      </a>
                      <ul class="sub">
                           <li class="active"><a  href="AdminPanel.jsp">Welcome to admin pannel </a></li>
                            <li class="active"><a  href="index.html">go to index page</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>AgentServices</span>                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="agentreg.jsp">Add Agent</a></li>
                          <li class="active"><a  href="DeleteAgent.jsp">Delete Agent </a></li>
                          <li class="active"><a  href="UpdateAgent.jsp">Update Agent </a></li>
                          <li class="active"><a  href="ListAgent.jsp">View Agent </a></li>
                          <li class="active"><a  href="sales.jsp"></a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span> Product</span>
Service                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="InsertProduct.jsp">Add Product </a></li>
                          <li class="active"><a  href="DeleteProduct.jsp">Delete Product </a></li>
                          <li class="active"><a  href="UpdateProduct.jsp">Update Product </a></li>
                          <li class="active"><a  href="ListProduct.jsp">View Product </a></li>
                      </ul>
                  </li>
                  <li class="sub-menu"><a href="javascript:;" >
                         <i class="fa fa-tasks"></i>
                   <span>ItServices</span></a>
                      <ul class="sub">
                          <li class="active"><a  href="InsertService.jsp">Add Services </a></li>
                          <li class="active"><a  href="DelService.jsp">Delete Services </a></li>
                          <li class="active"><a  href="UpdateService.jsp">Update Services </a></li>
                          <li class="active"><a  href="ListService.jsp">View Services </a></li>
                      </ul>
                       <li class="sub-menu"><a href="demo.jsp" >
                         <i class="fa fa-tasks"></i>
                   <span>answer the user</span></a>
                  </li>
                 
              </ul>
              <!-- sidebar menu end-->
        </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
     
      <section id="main-content" style="background-image: url('2.jpg');">
          <section class="wrapper"style="background-image: url('2.jpg');">
              <center>
               <table><tr><td colspan="3">
        <b><u><h1 style=margin-right:500px;>ASSIGN WORK TO AVALIABLE AGENT</h1></u></b>  
       
    
        
         
        
      </td></tr> <tr><td style=margin-left:50px;>
          	<div  style=height:350px;width:300px;float:right;margin-right:50px;margin-top:20px;>
           <center>	<h2><b><u><strong>All avaliable agents</strong></u></b></h2>
         <%  	  ProjectDao obj=new ProjectDao();
 ResultSet rs=obj.FetchAllAgent();
 
%>
<form>
   <table><tr><td><select name="email" id="email"  style=color:black;width:146px;>
<option>Select Agent</option>



      
    <%     int i=0;
        while(rs.next()) {%>
           
               <option>
             <%=rs.getString(4) %>
             </option>
             
               
            
      
     <% i++; } %>
     
       </select>
          	</td><td><input type="submit" value="search" style=width:100px;/></td></tr></table></form>
          	
          	          	<%
  String email=request.getParameter("email");
   
  ProjectDao obj1=new ProjectDao();
  ResultSet ps=obj1.FetchAgentByID(email);
   
%>
<%if(ps.next()){ %>
<table border=2px:solid-black;>
    <tr><td>Agent_name</td><td><input type="text" name="agent_name" value="<%=ps.getString(1) %>"readonly=readonly/></td></tr>
    <tr><td>Pwd</td><td><input type="text" name="pwd" value="<%=ps.getString(2) %>" readonly=readonly/></td></tr>
     <tr><td>Edu</td><td><input type="text" name="edu" value="<%=ps.getString(3) %>" readonly=readonly/></td></tr>
      <tr><td>Email</td><td><input type="text" name="email" value="<%=ps.getString(4) %> "  readonly=readonly/></td></tr>
    <tr><td>Contact</td><td><input type="text" name="contact"  value="<%=ps.getString(5) %>"readonly=readonly /></td></tr>
    <tr><td>Skills</td><td><input type="text" name="skills" value="<%=ps.getString(6) %>" readonly=readonly/></td></tr>
    <tr><td>City</td><td><input type="text" name="city" value="<%=ps.getString(7) %>" readonly=readonly/></td></tr>
  <tr><td>Exp</td><td><input type="text" name="exp" value="<%=ps.getString(8) %>" readonly=readonly/></td></tr>
      <tr><td>Longitude</td><td><input type="text" name="longitude" value="<%=ps.getString(9) %>" readonly=readonly/></td></tr>
  <tr><td>Lattitude</td><td><input type="text" name="lattitude" value="<%=ps.getString(10) %>"readonly=readonly /></td></tr>
          
</table>
</center>
</div>
<%} %></td>
          	
         <td> 	<center><div style=height:350px;width:300px;float:right;margin-right:63px;margin-top:20px;>
          	<h2><b><u><strong>all user requests</strong></u></b></h2>
          	
          	  <%  	 
 ResultSet qs=obj.FetchAllreqform();
 
%>
<form>
   <table><tr><td><select name="id" id="id" style=color:black;width:146;>
<option>Select user request_id </option>



      
    <%     int j=0;
        while(qs.next()) {%>
           
               <option>
             <%=qs.getString(7) %>
             </option>
             
               
            
      
     <% j++; } %>
     
       </select>
          	</td><td><input type="submit" value="search" style=width:87px;/></td></tr></table></form>
          	 	<%
  String id=request.getParameter("id");
 
  ResultSet ts=obj.FetchreqformByID(id);
   
%>
<%if(ts.next()){ %>

<table border=2px:solid-black;>
    <tr><td>uname</td><td><input type="text" name="agent_name" value="<%=ts.getString(1) %>"readonly=readonly/></td></tr>
    <tr><td>email</td><td><input type="text" name="pwd" value="<%=ts.getString(2) %>" readonly=readonly/></td></tr>
     <tr><td>contact</td><td><input type="text" name="edu" value="<%=ts.getString(3) %>" readonly=readonly/></td></tr>
      <tr><td>issue</td><td><input type="text" name="email" value="<%=ts.getString(4) %> "  readonly=readonly/></td></tr>
    <tr><td>city</td><td><input type="text" name="contact"  value="<%=ts.getString(5) %>"readonly=readonly /></td></tr>
    <tr><td>service type</td><td><input type="text" name="skills" value="<%=ts.getString(6) %>" readonly=readonly/></td></tr>
    <tr><td>id</td><td><input type="text" name="id" value="<%=ts.getString(7) %>" readonly=readonly/></td></tr>
   <tr><td>Address</td><td><input type="text" name="address" value="<%=ts.getString(8) %>" readonly=readonly/></td></tr>
  
</table>


<%} %>
          </center>	</div>
          	
          	
          	
          	</td><td rowspan="2" style=border-style:double;>
          	<div style=height:500px;width:355px;float:right;margin-right:63px;margin-top:20px;>
          
          	<center>	<h2><b><u><strong>remove completed task</strong></u></b></h2>
          	
<form action="DeleteCompletedTask" method="post">
<%  
  ResultSet ct=obj.FetchAllCompletedTask();
   
%>
<select name="id" id="id" style=color:black;>
<option>view completed task ID</option>
<% int l =0;
while(ct.next()){ %>

 <option>
             <%=ct.getString(2) %>
             </option>


<%}l++; %></select><input type="submit" value="Remove"style=color:black;>
</form> 
          </center></div>
          	</td> </tr>
          

	
		<tr  ><td colspan="2" > <form method="post" action="WorkAssignServlet">
  <center> <div ></div>       	
  <table border=1px:solid-black;><tr>
  <td><h2> Confirm User request id</h2>
  </td>
  <td> 
 <%  
  ResultSet qt=obj.FetchAllreqform();
   
%>
<select name="id" id="id" style=color:black;width:100px;>
<option>view req ID</option>
<% int m =0;
while(qt.next()){ %>

 <option>
             <%=qt.getString(7) %>
             </option>


<%}m++; %></select></td></tr>
 
 <tr>
  <td><h2> Confirm Agent email</h2>
  </td><td>

 
 <select name="email" id="email"  style=color:black;width:100px;>
<option>Select Agent</option>


<% ResultSet as=obj.FetchAllAgent();%>
      
    <%     int p=0;
        while(as.next()) {%>
           
               <option>
             <%=as.getString(4) %>
             </option>
             
               
            
      
     <% p++; } %>
     
       </select></td></tr>
 </table>
    <center> <br>
    <br> 
  <input type="submit" value="Assign Task" style=color:black;height:30px;width:150px;></center></center></form></td></tr>	
          	
          	</table></center>
          	
          	</center></section>
          	
          	</section>
          	</section>
          	


<%
		      if(request.getParameter("var")!=null)
		      {
		    	  out.println("<h3><font color=green>"+request.getParameter("var")+"</font></h3>");
		      }
		      else{
		    	  out.println("<h3><font color=green>"+request.getParameter("error")+"</font></h3>");
		    	  
		      }
		    	  
		    
		
		%> </center> 
  </form>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="assets/js/form-component.js"></script>    
    
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

<%}else {  response.sendRedirect("adminlogin.jsp");}
	
	%>

 
</body>
</html>