import javax.servlet.*;
import javax.servlet.http.*;

import java.io.*;
import java.util.*;
import java.sql.*;
import CMST.*;

public class CheckDept1 extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	
	{
			PrintWriter out = response.getWriter();
			HttpSession session = request.getSession() ;
			 RequestDispatcher rd=null;
          //=request.getRequestDispatcher("AdminHome.jsp");


			try
			{


	        ConnectionBean CBean=new ConnectionBean();
            Connection con=CBean.getConnection();
			response.setContentType("text/html");
			String uid = request.getParameter("cLid");
            String pwd = request.getParameter("cPwd");
            System.out.println("user uid" +uid);
            System.out.println("pwd uid" +pwd);

            ResultSet custrs=CBean.executeQuery("select reg_id,login_type from login_master where user_id='" + uid + "' and user_pwd='" + pwd + "' ");

             if(custrs.next())
			 {
            	 String regid=custrs.getString(1);
            	 System.out.println("regid==="+regid);
			  String login_type=custrs.getString(2);

			    if(login_type.equals("D"))
			    {
			    	session.setAttribute("regid", regid);
			    	rd=request.getRequestDispatcher("DepartmentHome.jsp");
			    	rd.forward(request, response);

				}else
				{

					rd=request.getRequestDispatcher("DLogin.jsp");
				}
			 }else
			 {

				 rd=request.getRequestDispatcher("DLogin.jsp");


			 }





	    }
		catch(Exception e)
		{
			out.println("Invalid Login Information"+e);
	    }

	}

}
