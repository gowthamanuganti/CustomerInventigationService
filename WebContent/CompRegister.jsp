<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<html>
<body>
<form >
<%@page import="java.sql.*,CMST.*" %>
<%

  String cmpno=request.getParameter("cno");
  String pdes=request.getParameter("pdes");
  String area=request.getParameter("area");
  String date=request.getParameter("date");
  SimpleDateFormat format=new SimpleDateFormat("12:01:11 11:01");
  format.format(date);
  String cid=session.getValue("regid") + "";
  if(cid==null){
	  %>
	     <jsp:forward page="Login.jsp" />
	<% 
  }else{
    
  String ctype=request.getParameter("ctype");
  System.out.println(cid + "");
  try
  {
    ConnectionBean CBean=new ConnectionBean();
    Connection con=CBean.getConnection();
    Statement stmt=con.createStatement();
    
    ResultSet rs=stmt.executeQuery("select department_id from police_department where area='" + area  + "' ");
    rs.next();
    String deptid=rs.getString(1);
    System.out.println(deptid + "department");
    
    String stats="Pending";
    
    rs.close();
    int inserted=CBean.executeUpdate("insert into complaint_reg values('" + cmpno + "','" + pdes + "','" + stats + "','" + cid + "','" + deptid + "','" + ctype + "','"+date+ "') ");
    if(inserted==1)
    {
%>
     <jsp:forward page="CustomerInserted.jsp" />
<%
    }
  }catch(Exception ex)
  {
    System.out.println("Error"+ ex);
  }
  }
%>

</form>

</body>
</html>
