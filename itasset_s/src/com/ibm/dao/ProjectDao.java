package com.ibm.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.ibm.model.AgentModel;
import com.ibm.model.Ans;
import com.ibm.model.Ask;
import com.ibm.model.FeedModel;
import com.ibm.model.FormModel;
import com.ibm.model.ProductModel;
import com.ibm.model.ServiceModel;


import com.ibm.model.RegModel;




public class ProjectDao {
	
	
	public static String mysqlusername="root";
	public static String mysqlpassword="1234";
	public static String jdbcurl="jdbc:mysql://localhost:3306/mvc";
	public static String jdbcDriver="com.mysql.jdbc.Driver";
	public static  Connection con=null;
	
	static
	{
		
		
		try
		{
			Class.forName(jdbcDriver);
			con=DriverManager.getConnection(jdbcurl,mysqlusername, mysqlpassword);
			System.out.println("done");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	public ResultSet FetchAllProducts()
	{
		
		ResultSet rs=null;
		try
		{
		String sql="select * from product";
		PreparedStatement ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return rs;
	}
	public ResultSet FetchAllService()
	{
		
		ResultSet rs=null;
		try
		{
		String sql="select * from services";
		PreparedStatement ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return rs;
	}
	public String ValidateUser(String sql,RegModel Obj)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Obj.getEmail());
			ps.setString(2,Obj.getPwd());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return "";
	}
	public String ValidateAgent(String sql,AgentModel Obj1)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,Obj1.getEmail());
			ps.setString(2,Obj1.getPwd());
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return "";
	}
	public String InsertFeed(String sql,FeedModel obj)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,obj.getUname());
			ps.setString(2,obj.getMnum());
			ps.setString(3,obj.getRos());
			ps.setString(4,obj.getCmts());
			
			System.out.println("done1");
			int i=ps.executeUpdate();
			if(i==1)
			{
                  return "success";				
			}
			else
			{
				return "fail";
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return "";
	}
	public String InsertProduct(String pname,String price, String color,String pic)
	{
		
		try
		{
			String sql="insert into product(pname,price,color,pic)values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, pname);
			ps.setString(2, price);
			ps.setString(3, color);
			ps.setString(4, pic);
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	
	public String Subscribe(String email)
	{
		
		try
		{
			String sql="insert into subscribe(email)values(?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	
	
	public String InsertUser(String sql,RegModel obj)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,obj.getUname());
			ps.setString(2,obj.getPwd());
			ps.setString(3,obj.getDname());
			ps.setString(4,obj.getEmail());
			ps.setString(5,obj.getContact());
			ps.setString(6,obj.getIssue());
			ps.setString(7,obj.getCity());
			ps.setString(8,obj.getIssue_type());
			ps.setString(9,obj.getSques());
			ps.setString(10,obj.getSans());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
                  return "success";				
			}
			else
			{
				return "fail";
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return "";
	}

	public String InsertRequest(String sql,FormModel obj)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,obj.getUname());
			
			ps.setString(2,obj.getEmail());
			ps.setString(3,obj.getContact());
			ps.setString(4,obj.getIssue());
			ps.setString(5,obj.getCity());
			ps.setString(6,obj.getIssue_type());
			ps.setString(7,obj.getAddress());
			int i=ps.executeUpdate();
			if(i==1)
			{
                  return "success";				
			}
			else
			{
				return "fail";
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return "";
	}

	
	
	public String InsertAgent(String sql,AgentModel obj)
	{
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,obj.getAgent_name());
			ps.setString(2,obj.getPwd());
			ps.setString(3,obj.getEdu());
			ps.setString(4,obj.getEmail());
			ps.setString(5,obj.getContact());
			ps.setString(6,obj.getSkills());
			ps.setString(7,obj.getCity());
			ps.setString(8,obj.getExp());
			ps.setString(9,obj.getLongitude());
			ps.setString(10,obj.getLattitude());
			ps.setString(11,obj.getPic());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
                  return "success";				
			}
			else
			{
				return "fail";
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return "";
	}
		public ResultSet FetchAllAgent()
	{
		
		ResultSet rs=null;
		try
		{
		String sql="select * from agent ";
		PreparedStatement ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return rs;
	}
		
		
		public ResultSet FetchAllQues()
		{
			
			ResultSet rs=null;
			try
			{
			String sql="select * from question ";
			PreparedStatement ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			
			return rs;
		}


		public ResultSet FetchAllreqform()
		{
			
			ResultSet rs=null;
			try
			{
			String sql="select * from reqform ";
			PreparedStatement ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			
			return rs;
		}
	public ResultSet FetchAlllocn()
	{
		
		ResultSet rs=null;
		try
		{
		String sql="select * from agent";
		PreparedStatement ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return rs;
	}
	public String DeleteProduct(String id)
	{
		try
		{
			String sql="delete from product where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "";
	}
	public String DeleteService(String sname)
	{
		try
		{
			String sql="delete from services where sname=?";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, sname);
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "";
	}
	
	public String DeleteCompletedTaskById(String id)
	{
		try
		{
			String sql="delete completedtask,reqform,work from completedtask INNER JOIN reqform on completedtask.id=reqform.id INNER JOIN work on reqform.id=work.id where completedtask.id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1, id);
			int i=ps.executeUpdate();
			
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "";
	}
	public ResultSet  FetchAgentByID(String email)
	{
		ResultSet rs=null;
		try
		{
			String sql="select * from agent where email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	   return rs;
	}
	public ResultSet  FetchQuesByID(String id)
	{
		ResultSet rs=null;
		try
		{
			String sql="select * from question where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	   return rs;
	}
	
	public ResultSet  FetchTaskByEmail(String email)
	{
		ResultSet rs=null;
		try
		{
			String sql="select * from work where email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	   return rs;
	}
	public ResultSet  FetchreqformByID(String id)
	{
		ResultSet rs=null;
		try
		{
			String sql="select * from reqform where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	   return rs;
	}
	public ResultSet  FetchUserByEmail(String email)
	{
		ResultSet rs=null;
		try
		{
			String sql="select * from register where email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	   return rs;
	}
	public String UpdateAgentRecord(String sql,AgentModel obj)
	{
		
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getAgent_name());
			ps.setString(2, obj.getPwd());
			ps.setString(3, obj.getEdu());
			
			ps.setString(4, obj.getContact());
			ps.setString(5, obj.getSkills());
			ps.setString(6, obj.getCity());
			ps.setString(7, obj.getExp());
			ps.setString(8, obj.getLongitude());
			ps.setString(9, obj.getLattitude());
			ps.setString(10, obj.getPic());
			ps.setString(11, obj.getEmail());
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	
	public String UpdateUserRecord(String sql,RegModel obj)
	{
		
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getUname());
			ps.setString(2, obj.getPwd());
			ps.setString(3, obj.getDname());
			
			ps.setString(4, obj.getContact());
			ps.setString(5, obj.getIssue());
			ps.setString(6, obj.getCity());
			ps.setString(7, obj.getIssue_type());
			
			ps.setString(8, obj.getEmail());
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	public String DeleteAgentByEmail(String email)
	{
		try
		{
			String sql="delete from agent where email=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "";
	}
	public ResultSet  FetchProductByID(String id)
	{
		ResultSet rs=null;
		try
		{
			String sql="select * from product where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	   return rs;
	}
	public String UpdateService(String sql,ServiceModel obj)
{
		
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getStype());
			
			ps.setString(2, obj.getPrice());
			
			
			ps.setString(3, obj.getDetail());
			ps.setString(4, obj.getSname());
		
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	public static boolean insertQuestion(Ask m,String sql)
	{
		boolean status=false;
		try
		{
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,m.getEmail());
		ps.setString(2,m.getQuestion());
		ps.setString(3,m.getDetails());
		ps.setString(4,m.getDate());
		ps.setString(5,m.getTotans());
		int i=ps.executeUpdate();
		if(i!=0)
		{
			status=true;
			
		}
		else
		{
			status=false;
		}
		
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		return status;
	}
	public static ResultSet allQuestion(String sql)
	{
		ResultSet rs=null;
		try
		{
		PreparedStatement ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		
		}
		catch(Exception e)
		{
			
		}
		return rs;
	}

	public static ResultSet myQuestion(String sql,String email)
	{
		ResultSet rs=null;
		try
		{
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,email);
		rs=ps.executeQuery();
		
		}
		catch(Exception e)
		{
			System.out.println(e.toString());	
		}
		return rs;
	}
	public static ResultSet AnsQuestion(String sql,String qid)
	{
		ResultSet rs=null;
		try
		{
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,qid);
		rs=ps.executeQuery();
		
		}
		catch(Exception e)
		{
			System.out.println(e.toString());
		}
		return rs;
	}
	public static boolean insertAnswer(Ans m,String sql,String sql1,String sql2,String qid)
	{
		boolean status=false;
		try
		{
		PreparedStatement ps=con.prepareStatement(sql);
		PreparedStatement ps1=con.prepareStatement(sql1);
		PreparedStatement ps2=con.prepareStatement(sql2);
		
		ps.setString(1,m.getQid());
		ps.setString(2,m.getEmail());
		ps.setString(3,m.getAnswer());
		ps.setString(4,m.getDate());
		int i=ps.executeUpdate();
		
		
		ps1.setString(1,qid);
		ResultSet rs=ps1.executeQuery();
		int totalans=0;
		while(rs.next())
		{
			totalans=Integer.parseInt(rs.getString(6));
		}
		totalans=totalans+1;
		String finaltot=String.valueOf(totalans);
		
		ps2.setString(1,finaltot);
		ps2.setInt(2,Integer.parseInt(m.getQid()));
		i=ps2.executeUpdate();
		
		
		if(i!=0)
		{
			status=true;
			
		}
		else
		{
			status=false;
		}
		
		}
		catch(Exception e)
		{
		  e.printStackTrace();
		}
		return status;
	}
	

	public String InsertService(String stype,String sname, String price,String detail)
	{
		
		try
		{
			String sql="insert into services(stype,sname,price,detail) values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, stype);
			ps.setString(2, sname);
			ps.setString(3, price);
			ps.setString(4, detail);
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	
	
	public String InsertAnswer(String qid,String email, String answer,String date)
	{
		
		try
		{
			String sql="insert into answer(qid,email,answer,date) values(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, qid);
			ps.setString(2, email);
			ps.setString(3, answer);
			ps.setString(4, date);
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	public ResultSet FetchAllCompletedTask()
	{
		
		ResultSet rs=null;
		try
		{
		String sql="select * from completedtask ";
		PreparedStatement ps=con.prepareStatement(sql);
		rs=ps.executeQuery();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return rs;
	}
	public String CompletedTask(String email,String id)
	{
		
		try
		{
			String sql="insert into completedtask(email,id) values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, id);
		
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	
	public String AssignTask(String email,String id)
	{
		
		try
		{
			String sql="insert into work(email,id) values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, id);
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	
	
	public ResultSet  FetchServiceBySname(String sname)
	{
		ResultSet rs=null;
		try
		{
			String sql="select * from services where sname=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, sname);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	   return rs;
	}
	
	public String UpdateProduct(String sql,ProductModel obj)
{
		
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, obj.getPname());
			ps.setString(2, obj.getPrice());
			ps.setString(3, obj.getColor());
			
			
			ps.setString(4, obj.getPic());
			ps.setString(5, obj.getId());
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}

	public ResultSet  FetchProductByIname(String pname)
	{
		ResultSet rs=null;
		try
		{
			String sql="select * from product where pname=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, pname);
			rs=ps.executeQuery();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	   return rs;
	}
	
	public static int CountServices()
	{
		
		
		try
		{
		String sql="select count(pname) from product";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
		int i=rs.getInt(1);
		return i;
		
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return 0;
	}
	public static void main(String[] args) {
		
		
		

	}

}
