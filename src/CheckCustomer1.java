import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import CMST.*;

public class CheckCustomer1 extends GenericServlet {
	public void service(ServletRequest request, ServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		PrintWriter out = response.getWriter();
		// RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");

		try {

			ConnectionBean CBean = new ConnectionBean();
			Connection con = CBean.getConnection();
			response.setContentType("text/html");
			String uid = request.getParameter("cLid");

			ResultSet custrs = CBean
					.executeQuery("select user_pwd,login_type from login_master where user_id='"
							+ uid + "' ");

			if (custrs.next()) {

				String password = custrs.getString(1);

				String login_type = custrs.getString(2);

				if (login_type.equals("C")) {
					request.setAttribute("password", password);
					dispatcher = request.getRequestDispatcher("ShowPwd.jsp");
					dispatcher.forward(request, response);
					// out.println(password);

				} else {

					dispatcher = request.getRequestDispatcher("Login.jsp");
					dispatcher.forward(request, response);
				}
			} else {

				out.println("Invalid Login Information");

			}

		} catch (Exception e) {
			out.println("Invalid Login Information" + e);
		}

	}

}
