package users;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	
	private static boolean isSuccess;
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from users where username='"+username+"' and password='"+password+"' and userType='Customer'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	
	public static List<Users> getUsers(String userName){
		ArrayList<Users> user = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM users WHERE username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String mail = rs.getString(3);
				String phone = rs.getString(4);
				String user_name = rs.getString(5);
				String pass = rs.getString(6);
				String u_type = rs.getString(7);
				
				//Users use = new Users(id, user_name, mail, phone, userName, pass, u_type);
				Users use = new Users(id, name, mail, phone, user_name, pass, u_type);
				
				user.add(use);
			}
		}
		catch(Exception e) {
			e.getStackTrace();
		}
		
		return user;
	}
	
	
	
	public static boolean insertCustomer(String name,String email,String phone,String username, String pass) {
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
	
			//String sql = "INSERT INTO users() VALUES (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+pass+"')";
			String sql = "insert into users (userID,name,email,phone,username,password) values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+pass+"')";
			//ResultSet rs = statement.executeQuery(sql);
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
	public static boolean updateUser(String id, String name, String email, String phone, String userN, String pass, String type) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update users set name='"+name+"', email='"+email+"', phone='"+phone+"', username='"+userN+"', password='"+pass+"'" + "where userID='"+id+"'";
			
			int res = stmt.executeUpdate(sql);
			
			if(res>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.getStackTrace();
		}
		
		return isSuccess;
	}
	
	
	
	
	public static List<Users> getUserDetails(String id){
		
		int properID = Integer.parseInt(id);
		
		ArrayList<Users> user = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from users where userID='"+properID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int userId = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				String type = rs.getString(7);
				
				Users u = new Users(userId, name, email, phone, username, password, type);
				user.add(u);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return user;
		
	}
	
	
	
	
	public static boolean deleteUser(String id) {
		
		int properID = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from users where userID='"+properID+"'";
			
			int res = stmt.executeUpdate(sql);
			
			if(res>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.getStackTrace();
		}
		
		return isSuccess;
	}

}
