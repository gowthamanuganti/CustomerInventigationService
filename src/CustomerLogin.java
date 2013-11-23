import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.util.*;
import CMST.*;
public class CustomerLogin extends HttpServlet
{

 public void init(ServletConfig config) throws ServletException
 {
   super.init(config);
 }
 public void destroy()
 {
 }
 @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	 HttpSession session = req.getSession() ;
	 RequestDispatcher rd=null;
	 try
	  {
	    ConnectionBean CBean=new ConnectionBean();
	    Connection con=CBean.getConnection();
	    String loginName=req.getParameter("cLid");
	    String cPwd=req.getParameter("cPwd");
	    System.out.println("loginName==="+loginName+"password=="+cPwd);
	    ResultSet custrs=CBean.executeQuery("select reg_id,login_type from login_master where user_id='" + loginName + "' and user_pwd='" + cPwd + "' ");
	    if(custrs.next())
	    {
	    	 String cid=custrs.getString(1);
	    	
	    	 System.out.println("cid==="+cid);
	    	 /*req.setAttribute("cid",cid);*/
	         session.setAttribute("regid", cid);
	    	 String login_type=custrs.getString(2);
	    	
	    	 if(login_type.equals("C"))
	    	 {
				System.out.println("Is  Valid");
	    	 	rd=req.getRequestDispatcher("CustomerHome.jsp");
	    	 	rd.forward(req, resp);
	    	 }else
	    	 {
	    	   rd=req.getRequestDispatcher("Login.jsp");
			 }
		}else
		{
			  rd=req.getRequestDispatcher("Login.jsp");
	    }
	    rd.forward(req, resp);
	    
	  }catch(Exception ex)
	  {
	     System.out.println(ex);
	  }
		
	}

}