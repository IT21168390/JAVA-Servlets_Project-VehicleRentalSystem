package rentVehicle;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import users.DBConnect;
//import users.Users;

public class RentDBUtil {

private static boolean isSuccess;
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
public static boolean validate(String name) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from vehicles where name='"+name+"'";
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
	
	
public static List<Vehicles> getVehicleDetails(String name){
		
		ArrayList<Vehicles> vehicle = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from vehicles where name='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int vId = rs.getInt(1);
				String vName = rs.getString(2);
				String vNumber = rs.getString(3);
				String vType = rs.getString(4);
				String vColor = rs.getString(5);
				int vRate = rs.getInt(6);
			
				Vehicles v = new Vehicles(vId, vName, vNumber, vType, vColor, vRate);
					
				vehicle.add(v);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return vehicle;
		
	}


public static boolean addRent(String name,String number,String type,String customerID, String customerName, String days, String rate) {
	
	boolean isSuccess = false;
	
	int vRate = Integer.parseInt(rate);
	int rDays = Integer.parseInt(days);
	
	int total = vRate*rDays;
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		String sql = "insert into rent (vehicleName,vehicleNumber,vehicleType,dailyRate,customerID,customerName, rentDays, cost) values ('"+name+"','"+number+"','"+type+"','"+vRate+"','"+customerID+"','"+customerName+"', '"+rDays+"', '"+total+"')";
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




public static List<Orders> getRentDetails(String id){
	
	int properID = Integer.parseInt(id);
	
	ArrayList<Orders> orders = new ArrayList<>();
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from rent where customerID='"+properID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int orderId = rs.getInt(1);
			String vName = rs.getString(2);
			String vNumber = rs.getString(3);
			String vType = rs.getString(4);
			int vRate = rs.getInt(5);
			String cusID = rs.getString(6);
			String cusName = rs.getString(7);
			int days = rs.getInt(8);
			int cost = rs.getInt(9);
			
			Orders o = new Orders(orderId, vName, vNumber, vType, vRate, cusID, cusName, days, cost);
			orders.add(o);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return orders;
	
}




public static boolean deleteRent(String id) {
	
	try {
		int properID = Integer.parseInt(id);
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from rent where rentID='"+properID+"'";
		
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




public static boolean updateRent(String id, String newDays, String rate) {
	
	try {
		int days = Integer.parseInt(newDays);
		int newCost = Integer.parseInt(rate)*days;
		
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update rent set rentDays='"+days+"', cost='"+newCost+"' where rentID='"+id+"'";
		
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
