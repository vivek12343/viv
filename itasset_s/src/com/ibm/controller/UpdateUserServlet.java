package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.ProjectDao;
import com.ibm.model.AgentModel;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		String dname=request.getParameter("dname");
	
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String issue=request.getParameter("issue");
		String city=request.getParameter("city");
		String issue_type=request.getParameter("issue_type");
		
		
		
		RegModel obj=new RegModel();
		obj.setUname(uname);
		obj.setPwd(pwd);
		obj.setDname(dname);
		obj.setEmail(email);
		obj.setContact(contact);
		obj.setIssue(issue);
		obj.setCity(city);
		obj.setIssue_type(issue_type);
		
		
		
		
		String sql="update register set uname=?,pwd=?,dname=?,contact=?,issue=?,city=?,issue_type=? where email=?";
		
		ProjectDao obj1=new ProjectDao();
	
		String msg=obj1.UpdateUserRecord(sql, obj);
		
		if(msg.equals("success"))
		{
			response.sendRedirect("UpdateUser.jsp");
		}
		else
		{
			response.sendRedirect("UpdateUser.jsp");
		}
		
		
		
		
		
		
		
	}

}
