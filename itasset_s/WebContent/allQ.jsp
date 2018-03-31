<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.ibm.dao.*" %>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="images/Azulmedia.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="wrap">
  <div id="header">
    <h1 id="logo">IT ASSETS &nbsp;<a href ="index.html" style=float:right;color:black;>HOME</a></h1> </h1>
    <h2 id="slogan">Discussion Forum </h2>
    <div id="menu">
      <ul>
      
        <li><a href="logout.jsp">logout</a></li>
      </ul>
    </div>
  </div>
  <div id="content-wrap">
    <div id="sidebar" >
      <h1 class="clear"><h1 class="clear">Welcome
      <%  if(session.getAttribute("username")!=null)
      {
    	    out.println(session.getAttribute("username"));  
      }
      %></h1>
      <ul class="sidemenu">
        <li>
</li>      </ul>
      <h1>&nbsp;</h1>
      <div class="searchform">
        <form action="#">
          <p>&nbsp;</p>
        </form>
      </div>
      </div>
    <div id="main"> <a name="TemplateInfo"></a>
      <div class="box">
      <%
      
      if(session.getAttribute("username")==null)
		{
			
			response.sendRedirect("Login.jsp");
		}
		%></div></div>
      
   
<%
try
{
	
	String sql="select * from question order by date desc";
	ResultSet rs=ProjectDao.allQuestion(sql);
	
	out.println("<center><table border='1'>");
	out.println("<th>email</th><th>Questions</th><th>date</th><th>TotalAnswer</th>");
	while(rs.next())
	{
	  out.println("<tr>");
	  out.println("<td>"+rs.getString(2)+"</td>");
	  out.println("<td><a href='Answer.jsp?qid="+rs.getString(1)+"'><font color='yellow'>"+rs.getString(3)+"</a></td>");
	  out.println("<td>"+rs.getString(5)+"</td>");
	  out.println("<td><center><b>"+rs.getString(6)+"</td>");
	  out.println("</tr>");
	}
	out.println("</table>");
	
	
}
catch(Exception e)
{
	System.out.println(e);
}

%>
<div id="footer-wrap">
  <div class="footer-left">
    <p class="align-left"> &copy; 2018 <strong> viveksingh@webteklabs.com </strong></p>
  </div>
  <div class="footer-right">
    <p class="align-right">&nbsp;</p>
  </div>
</div>
</body>
</html>