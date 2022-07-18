package com.util;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	public static Connection getConnection() {
	
		Connection con = null;
		String driver = "org.postgresql.Driver";
		String url = "jdbc:postgresql://localhost:5432/advancejava?useSSL=false";
		String userName = "postgres";
		String password = "12345678";
			
			try {
			
			Class.forName(driver);
			  con = DriverManager.getConnection(url,userName,password);
			if(con == null) {
				System.out.println("db not connected...");
			}
			else {
				System.out.println("db connected...");
			}
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
//	public static void main(String[] args) {
//		getConnection();
//	}
		
	

}
