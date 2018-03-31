<jsp:include page="NewFile3.jsp" ></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.*" %>
<%@page import="com.ibm.dao.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <a href="Index.html" style=float:right;>HOME</a>
<%
   if(session.getAttribute("Agent")!=null){
%>
<h1><a href="AgentLogout.jsp" style=color:black;>logout</a></h1>

<table><tr><td>
		<div style=background-color:cyan;height:350px;width:350px;float:right;margin-right:63px;margin-top:20px;>
          	<h1><b><u><strong>all user requests</strong></u></b></h1>
          	
          	  <%  	
    ProjectDao obj=new ProjectDao();      	  
 ResultSet qs=obj.FetchAllreqform();
 
%>
<form>
   <table><tr><td><select name="id" id="id" style=color:black;>
<option>Select user request_id </option>



      
    <%     int j=0;
        while(qs.next()) {%>
           
               <option>
             <%=qs.getString(7) %>
             </option>
             
               
            
      
     <% j++; } %>
     
       </select>
          	</td><td><input type="submit" value="search" /></td></tr></table></form>
          	 	<%
  String id=request.getParameter("id");
  
  ResultSet ts=obj.FetchreqformByID(id);
   
%>
<%if(ts.next()){ %>
<table>
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
          	</div>
          	</td><td>
          	
<div style=background-color:cyan;height:150px;width:200px;float:right;margin-right:50px;margin-top:20px;>
 

	<%
  String email=session.getAttribute("Agent").toString() ;
 
  ResultSet as=obj.FetchTaskByEmail(email);
   
%>
<form action="TaskCompletedServlet" method="post">
<table><tr><td><input type="hidden" name="email" value="email"></td>
</tr>
<tr><td>
<select name="id" id="id" style=color:black;>
<option>view task ID</option>
<% int i =0;
while(as.next()){ %>

 <option>
             <%=as.getString(2) %>
             </option>


<%}i++; %></select></td></tr><tr>
<td>If Task Is Done Then <br>
Select Task Id And Click on &nbsp;&nbsp;<h2><input type="submit" value="COMPLETED"/></h2>
</td></tr></table>
</form>
</div>
          	
        </td><td>
        

<div style=background-color:cyan;height:350px;width:350px;float:right;margin-right:63px;margin-top:20px;>
          	<h1><b><u><strong>all task assigned </strong></u></b></h1>
          	
          	  <%  	
        
        	  
 ResultSet bs=obj.FetchTaskByEmail(email);

%>
<form>
   <table><tr><td><select name="ide" id="id" style=color:black;>
<option>Select task id </option>



      
    <%     int k=0;
        while(bs.next()) {%>
           
               <option>
             <%=bs.getString(2) %>
             </option>
             
               
            
      
     <% k++; } %>
     
       </select>
          	</td><td><input type="submit" value="search" /></td></tr></table></form>
          	 	<%
          	  String ide=request.getParameter("ide");
          	  ProjectDao obj1=new ProjectDao();  
  ResultSet cs=obj1.FetchreqformByID(ide);
   
%>
<%if(cs.next()){ %>
<table>
    <tr><td>uname</td><td><input type="text" name="agent_name" value="<%=cs.getString(1) %>"readonly=readonly/></td></tr>
    <tr><td>email</td><td><input type="text" name="pwd" value="<%=cs.getString(2) %>" readonly=readonly/></td></tr>
     <tr><td>contact</td><td><input type="text" name="edu" value="<%=cs.getString(3) %>" readonly=readonly/></td></tr>
      <tr><td>issue</td><td><input type="text" name="email" value="<%=cs.getString(4) %> "  readonly=readonly/></td></tr>
    <tr><td>city</td><td><input type="text" name="contact"  value="<%=cs.getString(5) %>"readonly=readonly /></td></tr>
    <tr><td>service type</td><td><input type="text" name="skills" value="<%=cs.getString(6) %>" readonly=readonly/></td></tr>
    <tr><td>id</td><td><input type="text" name="id" value="<%=cs.getString(7) %>" readonly=readonly/></td></tr>
   <tr><td>Address</td><td><input type="text" name="address" value="<%=cs.getString(8) %>" readonly=readonly/></td></tr>
  
</table>

<%} %>
          	</div>
          	
        
        </td>
        </tr></table>
          	<%}  else{response.sendRedirect("Agentlogin.jsp");} %> 
</body>
</html>