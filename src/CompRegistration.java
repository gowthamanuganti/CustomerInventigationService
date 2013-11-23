import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import CMST.ConnectionBean;


public class CompRegistration extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher dispatcher=null;
		resp.setContentType("text/html");
          HttpSession session=req.getSession();
		  String cmpno=req.getParameter("cno");
		  String pdes=req.getParameter("pdes");
		  String area=req.getParameter("area");
		  
		  DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	
			String myDate = formatter.format(new Date());
			System.out.println("mydate=="+myDate);
		
		  String ctype=req.getParameter("ctype");
		 
		  String cid=session.getValue("regid") + "";
		  System.out.println(cid + "");
		  if(cid==null){
			  dispatcher=req.getRequestDispatcher("Login.jsp");
		  }else{
			  
			    
			    ResultSet rs;
				try {
					ConnectionBean CBean=new ConnectionBean();
				    Connection con=CBean.getConnection();
				    Statement stmt=con.createStatement();
					rs = stmt.executeQuery("select department_id from police_department where area='" + area  + "' ");
					rs.next();
					String deptid=rs.getString(1);
				    System.out.println(deptid + "department");
				    
				    String stats="Pending";
				    
				    rs.close();
				    int inserted;
				    inserted = CBean.executeUpdate("insert into complaint_reg values('" + cmpno + "','" + pdes + "','" + stats + "','" + cid + "','" + deptid + "','" + ctype + "','"+myDate+ "') ");
				    if(inserted==1)
				    {
				    	System.out.println("hai registered");
				    	 dispatcher=req.getRequestDispatcher("CustomerInserted.jsp");
				    }
				} catch (SQLException e2) {
					System.out.println(e2);
					e2.printStackTrace();
				}
			   
			   
		  }
	}
}
