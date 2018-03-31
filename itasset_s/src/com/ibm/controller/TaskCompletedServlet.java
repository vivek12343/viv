package com.ibm.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.ProjectDao;

/**
 * Servlet implementation class TaskCompletedServlet
 */
@WebServlet("/TaskCompletedServlet")
public class TaskCompletedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TaskCompletedServlet() {
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
		// TODO Auto-generated method stub
		
		  
		

		
		String Email= request.getParameter("email");
		String Id= request.getParameter("id");
	
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.println(Email+" "+Id);
		
	
            ProjectDao obj=new ProjectDao();
            String msg=obj.CompletedTask(Email, Id);
            if(msg.equals("success"))
            {
            	response.sendRedirect("AgentPanel.jsp?var=successfully updated");
            }
            else
            {
            	response.sendRedirect("AgentPanel.jsp");
            }
		}
		 
        
	}
            
            		
            
            
		





