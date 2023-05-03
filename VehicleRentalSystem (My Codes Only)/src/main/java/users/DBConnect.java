package users;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/vehiclerentalsystem?autoReconnect=true&useSSL=false";
	private static String user = "root";
	private static String password = "Hashan2000";
	
	private static Connection newConnection;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			newConnection = DriverManager.getConnection(url, user, password);
		}
		catch(Exception e) {
			//System.out.println("Database connection is not success!!!");
			e.getStackTrace();
		}
		
		return newConnection;
	}
}
