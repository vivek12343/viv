<%@page import="java.sql.*" %>
<%@page import="com.ibm.dao.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body style=background-color:#E6E6FA;>
  <%
      
      if(session.getAttribute("username")!=null)
		{
			
		
		%>
		
<center>
 <h1> &nbsp;<a href ="index.html" style=float:right;color:black; >HOME</a>
   </h1>
<h1>Search Employee</h1>
<form action="UpdateUser.jsp">
<table><tr><td><input type="text" name="email" value="<%=session.getAttribute("username").toString() %>" readonly="readonly"/></td><td><input type="submit" value="search" /></td></tr></table>
</form>




<%
  String email=request.getParameter("email");
  ProjectDao obj=new ProjectDao();
  ResultSet rs=obj.FetchUserByEmail(email);
   
%>
<form action="UpdateUserServlet" method="post">
<%if(rs.next()){ %>
<table>
    <tr><td>Agent_name</td><td><input type="text" name="uname" value="<%=rs.getString(1) %>"/></td></tr>
    <tr><td>Pwd</td><td><input type="text" name="pwd" value="<%=rs.getString(2) %>" /></td></tr>
     <tr><td>Edu</td><td><input type="text" name="dname" value="<%=rs.getString(3) %>" /></td></tr>
    <tr><td>Email</td><td><input type="text" name="email" value="<%=rs.getString(4) %> "  readonly=readonly/></td></tr>
    <tr><td>Contact</td><td><input type="text" name="contact"  value="<%=rs.getString(5) %>" /></td></tr>
    <tr><td>Skills</td><td><input type="text" name="issue" value="<%=rs.getString(6) %>" /></td></tr>
    <tr><td>City</td><td><input type="text" name="city" value="<%=rs.getString(7) %>" /></td></tr>
     <tr><td>Exp</td><td><input type="text" name="issue_type" value="<%=rs.getString(8) %>" /></td></tr>
    
    <tr><td>     </td><td><input type="submit" value="Update" /></td></tr>
</table>
</form>
</center>
<% }}else{response.sendRedirect("Login.jsp");} %>

 
</body>
</html>