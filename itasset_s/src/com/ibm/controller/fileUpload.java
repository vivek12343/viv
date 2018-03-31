package com.ibm.controller;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ibm.dao.ProjectDao;

@WebServlet("/fileUpload")
@MultipartConfig(maxFileSize = 16177215)
public class fileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public fileUpload() {
           
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// gets values of text fields
				String pname= request.getParameter("pname");
				String price =  request.getParameter("price");
				String color =  request.getParameter("color");
               
				PrintWriter out=response.getWriter();
				response.setContentType("text/html");
				out.println(pname+" "+price+" "+color);
				
				
				InputStream inputStream = null;
				String savePath = getServletContext().getRealPath("/")+"images\\";
				
				Part filePart = request.getPart("pic");
				if (filePart != null) {
					// debug messages
					System.out.println(filePart.getName());
					System.out.println(filePart.getSize());
					System.out.println(filePart.getContentType());

					// obtains input stream of the upload file
					inputStream = filePart.getInputStream();
					
					BufferedInputStream bf=new BufferedInputStream(inputStream);
					
					//********************************GETTING FILE NAME*****************************************
					String header=filePart.getHeader("content-disposition");
					StringTokenizer st=new StringTokenizer(header,";");
					String fileToken=""; 
					while(st.hasMoreElements())
					{
						fileToken=st.nextToken();
					}
				    out.println(fileToken);
				    StringTokenizer st1=new StringTokenizer(fileToken,"=");
                    String Filename="";
                    while(st1.hasMoreElements())
					{
						Filename=st1.nextToken();
						
					}
                    out.println("<h1>"+Filename+"</h1>");
                    Filename=Filename.replace("\"", "");
                    out.println("<h1>"+Filename+"</h1>");
                    //************************************************************************************
                    FileOutputStream fout=new FileOutputStream(savePath+Filename);
                    int i=0;
                    while((i=bf.read())!=-1)
                    {
                    	fout.write(i);
                    }
                    
                    
                    
                    ProjectDao obj=new ProjectDao();
                    String msg=obj.InsertProduct(pname, price, color,savePath+Filename);
                    if(msg.equals("success"))
                    {
                    	response.sendRedirect("InsertProduct.jsp?var=successfully updated");
                    }
                    else
                    {
                    	response.sendRedirect("InsertProduct.jsp");
                    }
                    
                    		
                    
                    
				}


		
		
	}
	

}
