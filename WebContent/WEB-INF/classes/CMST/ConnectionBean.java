package CMST;
import java.sql.*;
public class ConnectionBean
{
private Connection connection;
private Statement statement;
private static final String driver123="com.mysql.jdbc.Driver";
private static final String  dbURL123="jdbc:mysql://localhost:3306/vasanth";
private static final String login123="root";
private static final String password123="root";

public ConnectionBean()
{
try
{
	Class.forName(driver123);
	System.out.println("url ="+dbURL123+" ,login ="+login123+" ,pass="+password123);
	connection=DriverManager.getConnection(dbURL123,login123,password123);
	statement=connection.createStatement();
}
catch (ClassNotFoundException e)
{
	System.err.println("ConnectionBean: driver unavailable");
	connection = null;
}
catch (SQLException e)
{
	
	System.err.println("ConnectionBean: driver not loaded");
	connection = null;
}

}
public Connection getConnection()
{
	return connection;
}
public void commit() throws SQLException
{
	connection.commit();
}
public void rollback() throws SQLException
{
	connection.rollback();
}

public void setAutoCommit(boolean autoCommit) throws SQLException
{
	connection.setAutoCommit(autoCommit );
}

public ResultSet executeQuery(String sql) throws SQLException
{
	return statement.executeQuery(sql);
}
public int executeUpdate(String sql) throws SQLException
{
	return statement.executeUpdate(sql);
}
public boolean execute(String sql) throws SQLException
{
         return statement.execute(sql);
}
protected void finalize()
{
try
{
	connection.close();
}
catch (SQLException e)
{
}
}
}