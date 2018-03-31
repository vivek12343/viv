package com.ibm.controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.ProjectDao;

import com.ibm.model.Ask;

/**
 * Servlet implementation class Asking
 */
@WebServlet("/Asking")
public class Asking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Asking() {
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
		 String email=null;
		 String question=request.getParameter("question");
		 String details=request.getParameter("details");
		 String date=null;
		 String totans="0";
		HttpSession session=request.getSession();
		if(session.getAttribute("username")!=null)
		{
			
			email=(String)session.getAttribute("username");
			Date d=new Date();
			date=d.toString();
		}
		
		System.out.println(email+"|"+question+"|"+details+"|"+date+"|"+totans);
		String sql="insert into question(email,question,details,date,totans) values(?,?,?,?,?)";
		Ask obj=new Ask();
		obj.setEmail(email);
		obj.setQuestion(question);
		obj.setDetails(details);
		obj.setDate(date);
		obj.setTotans(totans);
		boolean status=ProjectDao.insertQuestion(obj, sql);
		if(status)
		{
			request.setAttribute("msg","Successfully posted your question");
			getServletContext().getRequestDispatcher("/ask.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("msg","Please Try again!");
			getServletContext().getRequestDispatcher("/ask.jsp").forward(request, response);
		}
			
			
	}

}
