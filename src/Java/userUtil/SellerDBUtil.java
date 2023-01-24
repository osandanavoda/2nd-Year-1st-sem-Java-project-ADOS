package com.seller;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.seller.Seller;



public class SellerDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	//Check Validate
	
	public static List<Seller> validate(String email, String password){
	//Validate
		
		
		ArrayList<Seller> sel = new ArrayList<>();
		
		
	
		
		try {
			
			//DB connection
			Connection con = DBConnect.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select * from seller where email='"+email+"' and password='"+password+"'"; 
			ResultSet rs = stmt.executeQuery(sql);
			 
			
			if(rs.next()) {
				int sellerID = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String emailS = rs.getString(4);
				String passwordS = rs.getString(5);
				String confirmPassword = rs.getString(6);
				String contactNumber = rs.getString(7);
				
				Seller s = new Seller(sellerID,firstName, lastName, emailS, passwordS, confirmPassword, contactNumber);
				
				sel.add(s);
				
				
				
				
			}
			
			
		}
			catch(Exception e) {
				e.printStackTrace();
			}
		
		
		
		
		
		return sel;
		  
	}
	
	//Insert Data into seller table
	public static boolean insertSeller(String firstName,String lastName,String email,String password,String confirmPassword,String contactNumber) {
		
		boolean isSuccess = false;
		
		
		try {
			//DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into seller values(0,'"+firstName+"','"+lastName+"','"+email+"','"+password+"','"+confirmPassword+"','"+contactNumber+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			} 
			else {
				isSuccess = false;
				
			}
			
			
		}
		catch (Exception e){
			e.printStackTrace();	
		}
		
		return isSuccess;
		
	}
	
	//update data into seller table
	public static boolean updateseller(String sellerID, String firstName, String lastName, String email, String password, String confirmPassword, String contactNumber) {
		
		try {
			
			//DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update seller set firstName = '"+firstName+"',lastName = '"+lastName+"',email = '"+email+"',password = '"+password+"',confirmPassword = '"+confirmPassword+"',contactNumber = '"+contactNumber+"'"
					+ "where sellerID ='"+sellerID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
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
	
	//get seller details
	public static List<Seller> getSellerDetails(String sellerid){
		
		int convertedSellerID = Integer.parseInt(sellerid);
		
		ArrayList<Seller> sel = new ArrayList<>();
		
		try {
			//DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from seller where sellerID = '"+convertedSellerID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int sellerID = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String email = rs.getString(4);
				String password = rs.getString(5);
				String confirmPassword = rs.getString(6);
				String contactNumber = rs.getString(7);
			
			Seller s = new Seller(sellerID, firstName, lastName, email, password, confirmPassword, contactNumber);
			sel.add(s);
		
			}
		
		}
			
		catch(Exception e) {
			e.printStackTrace();
		}
		return sel;
		
	}
	
	//delete seller from deller table
	public static boolean deleteSeller(String sellerid) {
		
		int convertedSellerID = Integer.parseInt(sellerid);
		
		try {
			//DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from seller where sellerID = '"+convertedSellerID+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	
	
		
}
