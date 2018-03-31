package com.ibm.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.ProjectDao;

/**
 * Servlet implementation class ans
 */
@WebServlet("/ans")
public class ans extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ans() {
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
		Date d=new Date();
		String date=d.toString();
		String Qid= request.getParameter("qid");
		String Email= request.getParameter("email");
		String Answer =  request.getParameter("answer");
		
		
	
            ProjectDao obj=new ProjectDao();
            String msg=obj.InsertAnswer(Qid, Email, Answer, date);
            if(msg.equals("success"))
            {
            	response.sendRedirect("demo.jsp?var=successfully updated");
            }
            else
            {
            	response.sendRedirect("demo.jsp");
            }
            
            		
            
            
		}




}



