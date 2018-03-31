package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.ProjectDao;


@WebServlet("/DeleteAgentServlet")
public class DeleteAgentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DeleteAgentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String [] value=request.getParameterValues("email");
		
		
		for(int i=0;i<value.length;i++)
		{
			ProjectDao obj=new ProjectDao();
			String msg=obj.DeleteAgentByEmail(value[i]);
			System.out.println(msg);
			
		}
		response.sendRedirect("DeleteAgent.jsp");
		
		
	}

}
