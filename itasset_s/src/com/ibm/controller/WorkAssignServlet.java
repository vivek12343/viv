package com.ibm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.ProjectDao;

/**
 * Servlet implementation class WorkAssignServlet
 */
@WebServlet("/WorkAssignServlet")
public class WorkAssignServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkAssignServlet() {
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

		String Email= request.getParameter("email");
		String Id= request.getParameter("id");
	
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.println(Email+" "+Id);
		
	
            ProjectDao obj=new ProjectDao();
            String msg=obj.AssignTask(Email,Id );
            if(msg.equals("success"))
            {
            	response.sendRedirect("AdminPanel.jsp?var=successfully task Assigned");
            }
            else
            {
            	response.sendRedirect("AdminPanel.jsp?error=work not assigned");
            }
            
            	
		// TODO Auto-generated method stub
	}

}
