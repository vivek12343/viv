package com.ibm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.ProjectDao;
import com.ibm.model.RegModel;
import com.ibm.blogic.SendEmailToUser;

@WebServlet("/RegServlet")
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RegServlet() {
        super();
       
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(getServletContext().getRealPath("/"));
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

        HttpSession session=request.getSession();
        String c=request.getParameter("capcap");
        String c1=session.getAttribute("CAPTCHA").toString().trim();System.out.println("--------------"+c);
		System.out.println(c+"--------------"+c1);
        if(c.equals(c1))
        {
		
		String uname=request.getParameter("uname");
		System.out.println("--------------"+uname);
		String pwd=request.getParameter("pwd");
		System.out.println("--------------"+pwd);
		String dname=request.getParameter("dname");
		System.out.println("--------------"+dname);
		String email=request.getParameter("email");
		System.out.println("--------------"+email);
		String contact=request.getParameter("contact");
		System.out.println("--------------"+contact);
		String issue=request.getParameter("issue");
		System.out.println("--------------"+issue);
		String city=request.getParameter("city");
		System.out.println("--------------"+city);
		String issue_type=request.getParameter("issue_type");
		System.out.println("--------------"+issue_type);
		String sques=request.getParameter("sques");
		System.out.println("--------------"+sques);
		String sans=request.getParameter("sans");
		System.out.println("--------------"+sans);
		
		
		
		RegModel obj=new RegModel();
		obj.setUname(uname);
		obj.setPwd(pwd);
		obj.setDname(dname);
		obj.setEmail(email);
		obj.setContact(contact);
		obj.setIssue(issue);
		obj.setCity(city);
		obj.setIssue_type(issue_type);
		obj.setSques(sques);
		obj.setSans(sans);
		
		String sql="insert into register(uname,pwd,dname,email,contact,issue,city,issue_type,sques,sans)values(?,?,?,?,?,?,?,?,?,?)";
		System.out.println("--------------"+c);
		System.out.println("--------------"+c1);
		ProjectDao o=new ProjectDao();
		String msg=o.InsertUser(sql, obj);
		if(msg.equals("success"))
		{
			
			//SendEmailToUser.SendEmail("viveksinghthakur01@gmail.com", "8299180263", "viveksinghthakur0101@gmail.com", "hiee","sjdhuhsdiuhiu");
			System.out.println("--------------");
			System.out.println("--------------"+c);
			System.out.println("--------------"+c1);
			response.sendRedirect("Login.jsp");
		}
		else
		{
			response.sendRedirect("Register.jsp?error=Registration fail");
		}
		
		
		
		
		
	}
        else
		{
			response.sendRedirect("Register.jsp?error=Registration fail");
		}

}}
