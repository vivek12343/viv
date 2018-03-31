<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertion OF Services</title>
<style type="text/css">
th,td,input,h1{color:black;}
th {width:50px;}
</style>
</head>
<body style=background-color:#E6E6FA;>
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
      <section id="main-content">
          <section class="wrapper"style="background-image: url('2.jpg');">
          	<br>
   <h1> &nbsp;<a href ="index.html" style=float:right;color:black; >HOME</a>
   </h1>

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
<center>
<h1>INSERT NEW PRODUCTS</h1>
<form method="post" action="InsertServiceServlet" >
		<table>
			<tr>
				<td>Service Type:</td>
				<td><input type="text" name="stype" size="20"
					required="required" /></td>
			</tr>
			
			<tr>
				<td>Service Name:</td>
				<td><input type="text" name="sname" size="20"
					 /></td>
			</tr>
			<tr>
				<td>Product Price:</td>
				<td><input type="text" name="price" size="20"
					 /></td>
			</tr>
			<tr>
				<td>Service Detail:</td>
				<td><input type="text" name="detail" size="20"
					/></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="Submit"></td>
				<td><input type="reset" value="Clear" /></td>
			</tr>
		</table>
		<%
		      if(request.getParameter("var")!=null)
		      {
		    	  out.println("<h3><font color=green>"+request.getParameter("var")+"</font></h3>");
		      }
		
		
		%>
	</form>
	</center>
	<%}else {  response.sendRedirect("adminlogin.jsp");}
	
	%>
          	</section>
          	</section>
</body>
</html>