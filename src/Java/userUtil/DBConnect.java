package com.seller;

import java.sql.Connection;
import java.sql.DriverManager;

//Connecting the DB
public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/ados";
	private static String user = "root";
	private static String pass = "Mkk261";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, pass);
			
		}
		catch (Exception e){
			System.out.println("DB connection is not success");
		}
		
		return con;
		
	}
}
