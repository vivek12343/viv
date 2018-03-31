package com.ibm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.ProjectDao;
import com.ibm.model.FeedModel;


@WebServlet("/FeedServlet")
public class FeedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FeedServlet() {
        super();
       
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String uname=request.getParameter("uname");
		String mnum=request.getParameter("mnum");
		String ros=request.getParameter("ros");
		String cmts=request.getParameter("cmts");
		
		FeedModel obj=new FeedModel();
		obj.setUname(uname);
		obj.setMnum(mnum);
		obj.setRos(ros);
		obj.setCmts(cmts);
		
		String sql="insert into feedback(uname,mnum,ros,cmts)values(?,?,?,?)";
		
		ProjectDao o=new ProjectDao();
		String msg=o.InsertFeed(sql, obj);
		if(msg.equals("success"))
		{
			response.sendRedirect("rough.jsp");
		}
		else
		{
			response.sendRedirect("rough.jsp?error=Registration fail");
		}
		
		
		
		
		
	}

}
