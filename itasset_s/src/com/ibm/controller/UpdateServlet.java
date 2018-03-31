package com.ibm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.ProjectDao;
import com.ibm.model.AgentModel;


@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String agent_name=request.getParameter("agent_name");
		String pwd=request.getParameter("pwd");
		String edu=request.getParameter("edu");
	
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String skills=request.getParameter("skills");
		String city=request.getParameter("city");
		String exp=request.getParameter("exp");
		String longitude=request.getParameter("longitude");
		String lattitude=request.getParameter("lattitude");
		String pic=request.getParameter("pic");
		
		
		AgentModel obj=new AgentModel();
		obj.setAgent_name(agent_name);
		obj.setPwd(pwd);
		obj.setEdu(edu);
		obj.setEmail(email);
		obj.setContact(contact);
		obj.setSkills(skills);
		obj.setCity(city);
		obj.setExp(exp);
		obj.setLongitude(longitude);
		obj.setLattitude(lattitude);
		obj.setPic(pic);
		
		
		
		String sql="update agent set agent_name=?,pwd=?,edu=?,contact=?,skills=?,city=?,exp=?,longitude=?,lattitude=?,pic=? where email=?";
		
		ProjectDao obj1=new ProjectDao();
	
		String msg=obj1.UpdateAgentRecord(sql, obj);
		
		if(msg.equals("success"))
		{
			response.sendRedirect("UpdateAgent.jsp");
		}
		else
		{
			response.sendRedirect("UpdateAgent.jsp");
		}
		
		
		
		
		
		
		
	}

}
