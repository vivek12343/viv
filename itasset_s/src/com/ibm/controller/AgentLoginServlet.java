package com.ibm.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.ProjectDao;
import com.ibm.model.AgentModel;

/**
 * Servlet implementation class AgentLoginServlet
 */
@WebServlet("/AgentLoginServlet")
public class AgentLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgentLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		
		AgentModel obj1=new AgentModel();
		obj1.setEmail(email);
		obj1.setPwd(pwd);
		
		

		String sql="select * from agent where email=? and pwd =?";
		
		ProjectDao o=new ProjectDao();
		String msg=o.ValidateAgent(sql, obj1);
		
		if(msg.equals("success"))
		{
			
HttpSession session=request.getSession();
session.setAttribute("Agent", email);
session.setAttribute("pass", pwd);
System.out.println("name="+email);

			response.sendRedirect("AgentPanel.jsp");
		}
		else
		{
			response.sendRedirect("Agentlogin.jsp?var=invalid username and password");
		}
		
		
	}

}
