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
 * Servlet implementation class InsertServiceServlet
 */
@WebServlet("/InsertServiceServlet")
public class InsertServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertServiceServlet() {
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
		
		
		String Stype= request.getParameter("stype");
		String Sname= request.getParameter("sname");
		String Price =  request.getParameter("price");
		String Detail =  request.getParameter("detail");
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.println(Stype+" "+Sname+" "+Price+" "+Detail);
		
	
            ProjectDao obj=new ProjectDao();
            String msg=obj.InsertService(Stype, Sname, Price, Detail);
            if(msg.equals("success"))
            {
            	response.sendRedirect("InsertService.jsp?var=successfully updated");
            }
            else
            {
            	response.sendRedirect("InsertService.jsp");
            }
            
            		
            
            
		}




}


