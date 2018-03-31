package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.ProjectDao;
import com.ibm.model.FormModel;
import com.ibm.model.RegModel;

/**
 * Servlet implementation class FormServlet
 */
@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
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
		
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String issue=request.getParameter("issue");
		String city=request.getParameter("city");
		String issue_type=request.getParameter("issue_type");
		String address=request.getParameter("address");
		
		FormModel obj=new FormModel();
		obj.setUname(uname);
		
		obj.setEmail(email);
		obj.setContact(contact);
		obj.setIssue(issue);
		obj.setCity(city);
		obj.setIssue_type(issue_type);
		obj.setAddress(address);
		String sql="insert into reqform(uname,email,contact,issue,city,issue_type,address)values(?,?,?,?,?,?,?)";
		
		ProjectDao o=new ProjectDao();
		String msg=o.InsertRequest(sql, obj);
		if(msg.equals("success"))
		{
			response.sendRedirect("index.html");
		}
		else
		{
			response.sendRedirect("index.html?error=Registration fail");
		}
		
		
		
		
		
	}



		// TODO Auto-generated method stub
	}


