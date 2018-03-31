<jsp:include page="NewFile3.jsp" ></jsp:include>
    <%@page import="java.sql.*" %>
   
<%@page import="com.ibm.controller.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
     	<br>
        &nbsp;<a href ="index.html" style=float:right;color:black; >HOME</a></h1>
  
    <center>
        <form action="fpwd.jsp">
                        <table height='100px' width='120px'>
                            <tr><h1 style="color: white"><u> <b> FORGOT PASSWORD?</u></b> </h1></tr>
                            <tr>
                                <td style="color: white">
                                    Security Question<select name="sques" size="1">
                                        <option>What is your birth place?</option>
                                        <option>What is your pet name?</option>
                                        <option>What is your favourite teacher's name?</option>
                                        <option>When did you first go to school?</option>
                                        <option>What is your favourite color?</option>
                                        <option>What is your favourite food?</option>
                                    </select>
                                    
                       
                
                    </td>
                            </tr>
                            <tr>
                                <td style="color: white">
                                    Answer:
                                </td>
                            </tr>
                            <tr><td> <input type="text" name="sans" value="" size="39" /></td></tr>
                            <tr> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <td align="center">
                                    <input type="submit" value="SUBMIT" name="sbm" />
                                
                                <input type="button" value="Cancel" name="cancel" onclick="window.location.href='http://localhost:8080/WebApplication1/header.jsp'"/></td>
                            </tr>
                        </table>
        </form>
    </center>
    </body>

<%
    
     try
    {
    String a;
    a=request.getParameter("sans");
    
    boolean status=false ;
     if(request.getParameter("sans")!=null)
    {
      query q= new query();
        
        
          ResultSet rs=q.get_data("Select sans from mvc.register where sans='"+a+"'");
           
        
   
         if(rs.next())
         {
            
             response.sendRedirect("forgpass.jsp");
              
          }
         else
         { %>
         <script> alert ("Couldn't sign in!"); </script>
         <%}
      }
    }
    
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
    %>
</html>
