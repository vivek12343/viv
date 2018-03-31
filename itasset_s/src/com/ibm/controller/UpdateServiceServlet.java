package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.ProjectDao;
import com.ibm.model.ProductModel;
import com.ibm.model.ServiceModel;

/**
 * Servlet implementation class UpdateServiceServlet
 */
@WebServlet("/UpdateServiceServlet")
public class UpdateServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServiceServlet() {
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
		String stype=request.getParameter("stype");
		String sname=request.getParameter("sname");
		String price=request.getParameter("price");
		String detail=request.getParameter("detail");
		
		
		
		ServiceModel obj=new ServiceModel();
		obj.setStype(stype);
		obj.setSname(sname);
		obj.setPrice(price);
		obj.setDetail(detail);
		
		
		
		String sql=" update services set stype=? , price=? , detail=? where sname=?";
		
		ProjectDao obj1=new ProjectDao();
	
		String msg=obj1.UpdateService(sql, obj);
		
		if(msg.equals("success"))
		{
			response.sendRedirect("UpdateService.jsp");
		}
		else
		{
			response.sendRedirect("UpdateService.jsp");
		}
		
		
		
		
		
		
		
		
	}

}
