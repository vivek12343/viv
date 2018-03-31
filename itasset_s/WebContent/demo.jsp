<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<%@page import="com.ibm.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>I</title>
</head>
<body>

<div id="wrap">
  <div id="header">
    <h1 id="logo">IT ASSETS </h1>
    <h2 id="slogan">Discussion Forum </h2>
    <div id="menu">
      <ul>
        <li><a href="index,html">HOME</a></li>
         <li><a href="AdminLogout.jsp">logout</a></li>
      </ul>
    </div>
  </div>
  <div id="content-wrap">
    <div id="sidebar" >
      <h1 class="clear">Welcome
      <%  if(session.getAttribute("ADMIN")!=null)
      {
    	    out.println(session.getAttribute("ADMIN"));  
      }
      %></h1>
     <ul class="sidemenu">
        <li>   <%  	  ProjectDao obj=new ProjectDao();
 ResultSet ps=obj.FetchAllQues();
 
%>
    
<table>  <tr><td>

<select name="email" id="email"  style=color:black;width:200px;>
<option> Qid------email---------question</option>



    <%     int i=0;
        while(ps.next()) {%>
           
               <option>
             <%=ps.getString(1) %>....<%=ps.getString(2) %>&nbsp;.... <%=ps.getString(3) %>
             </option>
             
               
            
      
     <% i++; } %>
     
       </select></li></ul></td><td>
  
          	   
<form method="post" action="ans" >
		<table>
			<tr>
				<td>Qid:</td>
				<td><input type="number" name="qid" size="20"
					 /></td>
			</tr>
			
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" size="20"
					 /></td>
			</tr>
			<tr>
				<td>answer:</td>
				<td><textarea name="answer" cols="1000" rows="50" style="width:700px;"></textarea></td>
			</tr>
		
			
			<tr>
				<td></td>
				<td><input type="submit" value="Submit"><input type="reset" value="Clear" /></td>
			</tr>
		</table>
	
	</form>
</body>
</html>