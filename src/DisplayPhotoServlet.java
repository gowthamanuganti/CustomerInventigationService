import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DisplayPhotoServlet extends HttpServlet {
	 private Connection connection;
	 public  void init(ServletConfig servletconfig)
		        throws ServletException
		        {
		    	
		    	ServletContext servletContext = servletconfig.getServletContext();
		    	 
				
		    	 try {
						Class.forName("com.mysql.jdbc.Driver");
						connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/vasanth","root","root");
						
					} catch (ClassNotFoundException  e) {
						
						e.printStackTrace();
					} catch (SQLException e) {
						
						e.printStackTrace();
					}
					 
				}
	
	
	
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        try {
        	
            String userID = request.getParameter("userID");
            int thieve_id = Integer.parseInt(userID);
            System.out.println("userID ==== "+userID);
            PreparedStatement ps = connection.prepareStatement("select * from thieves where thieve_id=?");
            //ps.setString(1, "uday");
            ps.setInt(1, thieve_id);
            
            ResultSet rs = ps.executeQuery();
         
            rs.next();
            HttpSession ses1 = request.getSession(true);
            String name = rs.getString(2);
            System.out.println(" 1111NNNN == "+name);
            request.setAttribute("username", name);
			ses1.setAttribute("username", name);
             Blob b = rs.getBlob(6);
           
            response.setContentType("image/jpeg");
            response.setContentLength((int) b.length());
            InputStream is = b.getBinaryStream();
            OutputStream os = response.getOutputStream();
           
            byte buf[] = new byte[(int) b.length()];
            is.read(buf);
            os.write(buf);
        
            os.close();
        } catch (Exception ex) {
        	System.out.println("my Ex");
            System.out.println(ex.getMessage());
        }
    }

    
   /* protected void doPost(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	   try {
           	Class.forName("com.mysql.jdbc.Driver");
   			Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/vasanth","root","root");
               String username = request.getParameter("Name");
               System.out.println("username == "+username);
               PreparedStatement ps = connection.prepareStatement("select * from thieves where thieve_id=1");
               
               ResultSet rs = ps.executeQuery();
            
               rs.next();
               HttpSession ses1 = request.getSession(true);
               String name = rs.getString(2);
               request.setAttribute("username", name);
   			ses1.setAttribute("username", name);
                Blob b = rs.getBlob(6);
              
               response.setContentType("image/jpeg");
               response.setContentLength((int) b.length());
               InputStream is = b.getBinaryStream();
               OutputStream os = response.getOutputStream();
              
               byte buf[] = new byte[(int) b.length()];
               is.read(buf);
               os.write(buf);
           
               os.close();
           } catch (Exception ex) {
               System.out.println(ex.getMessage());
           }
    
    }*/
    
    
}
