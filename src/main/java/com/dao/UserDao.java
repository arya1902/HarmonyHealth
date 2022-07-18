package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.ProjectBean;
import com.util.DbConnection;

public class UserDao {
	
	private int productid;


	public void insertProduct(ProjectBean projectBean)  {
		
		
		try {
		Connection con = DbConnection.getConnection();
		PreparedStatement pstmt = con.prepareStatement("insert into product(pname,price) values(?,?)");
		pstmt.setString(1, projectBean.getPname());
		pstmt.setString(2, projectBean.getPrice());
		
		int record = pstmt.executeUpdate();
		
		System.out.println(record+"row inserted...");
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	public ArrayList<ProjectBean> getAllProducts(){
	
		ArrayList<ProjectBean> products=new ArrayList<>();
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from product");
			
			ResultSet rs = pstmt.executeQuery();
			
			
			
			while(rs.next()) {
				
				int productid = rs.getInt("productid");
				String pname = rs.getString("pname");
				String price = rs.getString("price");
				
				ProjectBean product = new ProjectBean();
				product.setProductid(productid);
				product.setPname(pname);
				product.setPrice(price);
				products.add(product);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	
	public void deleteProduct(int productid) {
		
		try(Connection con = DbConnection.getConnection();
			
			PreparedStatement pstmt = con.prepareStatement("delete from product where productid=?");
		){
			pstmt.setInt(1, productid);
			int r = pstmt.executeUpdate();
			System.out.println(r + "record deleted...");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<ProjectBean> searchProduct(String searchName){
		
		ArrayList<ProjectBean> products=new ArrayList<>();
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from product where pname like ?");
			pstmt.setString(1, searchName + "%");
			
			ResultSet rs =pstmt.executeQuery();
			
			
			
			while(rs.next()) {
				
				int productid = rs.getInt("productid");
				String pname = rs.getString("title");
				String price = rs.getString("price");
				
				ProjectBean product = new ProjectBean();
				product.setProductid(productid);
				product.setPname(pname);
				product.setPrice(price);
				products.add(product);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	
	public ProjectBean getProductById(int productid){
		
		ProjectBean product = new ProjectBean();
		
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from product where productid = ?");
			pstmt.setInt(1, productid);
			
			ResultSet rs =pstmt.executeQuery();
			
			
			
			while(rs.next()) {
				
				String pname = rs.getString("pname");
				String price = rs.getString("price");
				
				product.setProductid(productid);
				product.setPname(pname);
				product.setPrice(price);
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return product;
	}
	
	
	
public void updateProduct(ProjectBean product)  {
		
		
		try (Connection con = DbConnection.getConnection();
		PreparedStatement pstmt = con.prepareStatement("update  product set pname=? ,price=? where productid=?");){
	
		pstmt.setString(1, product.getPname());
		pstmt.setString(2, product.getPrice());
		pstmt.setInt(3, product.getProductid());
		
		pstmt.executeUpdate();
		
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}




	


	
}
	
	

