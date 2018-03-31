package com.ibm.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.ProjectDao;
import com.ibm.model.AgentModel;
import com.ibm.model.ProductModel;

/**
 * Servlet implementation class UpdateProductServlet
 */
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductServlet() {
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
		String pname=request.getParameter("pname");
		String price=request.getParameter("price");
		String color=request.getParameter("color");
		String pic=request.getParameter("pic");
		String id=request.getParameter("id");
		
		
		ProductModel obj=new ProductModel();
		obj.setPname(pname);
		obj.setPrice(price);
		obj.setColor(color);
		obj.setPic(pic);
	    obj.setId(id);
		
		
		String sql="update product set pname=?,price=?,color=?,pic=? where id=?";
		
		ProjectDao obj1=new ProjectDao();
	
		String msg=obj1.UpdateProduct(sql, obj);
		
		if(msg.equals("success"))
		{
			response.sendRedirect("UpdateProduct.jsp");
		}
		else
		{
			response.sendRedirect("UpdateProduct.jsp");
		}
		
		
		
		
		
		
		
	}

}
