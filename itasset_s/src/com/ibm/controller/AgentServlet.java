package com.ibm.controller;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;





import com.ibm.dao.ProjectDao;
import com.ibm.model.AgentModel;


/**
 * Servlet implementation class AgentServlet
 */
@WebServlet("/AgentServlet")
public class AgentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String Filename = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AgentServlet() {
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
		String agent_name=request.getParameter("agent_name");
		String pwd=request.getParameter("pwd");
		String edu=request.getParameter("edu");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String skills=request.getParameter("skills");
		String city=request.getParameter("city");
		String exp=request.getParameter("exp");
		String longitude=request.getParameter("longitude");
		String lattitude=request.getParameter("lattitude");
		
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		//out.println(agent_name+""+contact);
		
		
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
            }}
            
		
		
		
		//String pic=request.getParameter("pic");
		
		
		AgentModel obj=new AgentModel();
		
		obj.setAgent_name(agent_name);
		obj.setPwd(pwd);
		obj.setEdu(edu);
		obj.setEmail(email);
		obj.setContact(contact);
		obj.setSkills(skills);
		obj.setCity(city);
		obj.setExp(exp);
		obj.setLongitude(longitude);
		obj.setLattitude(lattitude);
		obj.setPic(Filename);
		
		
		String sql="insert into agent(agent_name,pwd,edu,email,contact,skills,city,exp,longitude,lattitude,pic)values(?,?,?,?,?,?,?,?,?,?,?)";

		ProjectDao o=new ProjectDao();
		String msg=o.InsertAgent(sql, obj);
		if(msg.equals("success"))
		{
			response.sendRedirect("AdminPanel.jsp");
		}
		else
		{
			response.sendRedirect("agentreg.jsp?error=Registration fail");
		}
	}

	}


