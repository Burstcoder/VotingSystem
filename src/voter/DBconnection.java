package voter;
import java.sql.*;
public class DBconnection {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/voting","root","welcome");
		return c;
	}

}
