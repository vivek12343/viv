<jsp:include page="NewFile3.jsp" ></jsp:include>

    <%@page import="java.sql.*" %>
<%@page import="com.ibm.controller.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgotpassword</title>
    <body background="image/texture2.jpg">
          	<br>
        &nbsp;<a href ="index.html" style=float:right;color:black; >HOME</a></h1>
  
    <center>
        <form action="forgpass.jsp">
                        
           <html>
    <body alink='green' align= 'bottom' background="image/texture2.jpg">
        <table width="200px"  height="200" align='center'>
            <tr><td><b>Enter your email<b>&nbsp;<input type="text" name="email" value="" size="50" /></td></tr>
            <tr><td><b>Enter new password<b>&nbsp;<input type="text" name="newpass" value="" size="50" /></td></tr>
            <tr><td><b>Confirm new password<b>&nbsp;<input type="text" name="cnfpass" value="" size="50" /></td></tr>
            <tr><td><input type="submit" value="Change Password" name="chngpass" /></td></tr>
        </table>
        


                            
    </body>
        </form>

<%
    try
    {
        String newpass=request.getParameter("newpass");
        String cnfpass=request.getParameter("cnfpass");
        String email=request.getParameter("email");
        if (request.getParameter ("chngpass")!=null)
        {
        if(newpass.equals(cnfpass))
        {
         
        query q=new query();
        String str=("Update mvc.register Set pwd= '"+newpass+"' where email='"+email+"'");
        int qt=q.update_data(str);
    
        if(qt>0)
        { %>
        <script> alert ("Password changed"); </script>
       <% }
        else
        { %>
        <script> alert("Error"); </script>
        <% }
        }
        else
        { %>
        <script> alert ("Password do not match"); </script>
        <% }
    }
    }
    catch( Exception e)
    {
        e.printStackTrace();
    }
    %>
    </html>