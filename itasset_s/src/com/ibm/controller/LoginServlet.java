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


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		
		RegModel obj=new RegModel();
		obj.setEmail(email);
		obj.setPwd(pwd);

		String sql="select * from register where email=? and pwd=?";
		
		ProjectDao o=new ProjectDao();
		String msg=o.ValidateUser(sql, obj);
		
		if(msg.equals("success"))
		{
			
HttpSession session=request.getSession();
session.setAttribute("username", email);
session.setAttribute("pwd", pwd);
System.out.println("name="+email);

response.sendRedirect("index.html");

//response.sendRedirect("name="+pic);


			//response.sendRedirect("UserHome.jsp");
		}
		else
		{
			response.sendRedirect("Login.jsp?var=invalid username and password");
		}
		
		

	}

}
