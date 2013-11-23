import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;

import java.util.*;
import CMST.*;
import java.io.*;
@MultipartConfig(maxFileSize = 16177215) 
public class ThieveRegistration extends HttpServlet {

	String noy = "0";
	String nom = "0";
	String nod = "0";
	String ws = "";

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
	}
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	HttpSession session=request.getSession();
	RequestDispatcher rd = null;
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	int thid = Integer.parseInt(request.getParameter("thid"));
	String thName = request.getParameter("thName");
	String tloc = request.getParameter("tloc");
	noy = request.getParameter("noy");
	nom = request.getParameter("nom");
	nod = request.getParameter("nod");
	System.out.println("values id " + nom);

	if (noy == "") {
		noy = "0";
	}

	if (nom == "") {
		nom = "0";
	}

	if (nod == "") {
		nod = "0";
	}

	ws = noy + "," + nom + "," + nod;

	String tth = request.getParameter("tth");
	InputStream inputStream = null; // input stream of the upload file
	Part image = request.getPart("photo");
	if (image != null) {
        // prints out some information for debugging
        System.out.println(image.getName());
        System.out.println(image.getSize());
        System.out.println(image.getContentType());
         
        // obtains input stream of the upload file
        inputStream = image.getInputStream();
    }
	//String image = request.getParameter("photo");
	//ServletInputStream inputStream = request.getInputStream();

	try {

		ConnectionBean CBean = new ConnectionBean();
		Connection con = CBean.getConnection();
		String sql = "INSERT INTO thieves (thieve_id,th_name,location,no_of_years,Type_Th,photo) values (?, ?, ?, ?, ?, ?)";
        PreparedStatement statement = con.prepareStatement(sql);
        statement.setInt(1, thid);
        statement.setString(2, thName);
        statement.setString(3, tloc);
        statement.setString(4, ws);
        statement.setString(5, tth);
        if (inputStream != null) {
            // fetches input stream of the upload file for the blob column
            statement.setBlob(6, inputStream);
        }
        int row = statement.executeUpdate();
        if (row > 0) {
        	rd = request.getRequestDispatcher("AdminInserted.jsp");
			rd.forward(request, response);
        }
		/*PreparedStatement pstmt = con.prepareStatement("insert into thieves values(?,?,?,?,?,?)");
		pstmt.setInt(1, thid);
		pstmt.setString(2, thName);
		pstmt.setString(3, tloc);
		pstmt.setString(4, ws);
		pstmt.setString(5, tth);
		File f = new File(image);*/
		/*String absolutePath = f.getAbsolutePath();
		System.out.println("absolutepath===" + absolutePath);
		FileInputStream fis = new FileInputStream(f);
		pstmt.setBinaryStream(6, inputStream, (int)absolutePath.length());
		int rows = pstmt.executeUpdate();*/

		/*int th_inserted = CBean.executeUpdate("insert into thieves values("+ thid + ",'" + thName + "','" + tloc + "','" + noy + "','"+ tth + "') ");
		if (rows == 1) {
			
		}*/
	} catch (Exception ex) {
		out.println("Error" + ex);
	}

}
	

}