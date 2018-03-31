<%@page import="com.ibm.logic.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
MyCaptca obj=new MyCaptca();
String v=obj.GenCaptcha();
out.println("<h1>"+v+"</h1>");
session.setAttribute("CAPTCHA", v);

System.out.println("CAPTCHA**********************"+v);
%>
</body>
</html>