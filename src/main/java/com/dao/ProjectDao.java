package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.ProjectBean;
import com.util.DbConnection;

public class ProjectDao {
	
	public void insertProject(ProjectBean projectBean)  {
		
		
		try {
		Connection con = DbConnection.getConnection();
		PreparedStatement pstmt = con.prepareStatement("insert into project (title,description) values(?,?)");
		pstmt.setString(1, projectBean.getTitle());
		pstmt.setString(2, projectBean.getDescription());
		
		int record = pstmt.executeUpdate();
		
		System.out.println(record+"row inserted...");
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	public ArrayList<ProjectBean> getAllProjects(){
	
		ArrayList<ProjectBean> projects=new ArrayList<>();
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from project");
			
			ResultSet rs = pstmt.executeQuery();
			
			
			
			while(rs.next()) {
				
				int projectId = rs.getInt("projectid");
				String title = rs.getString("title");
				String description = rs.getString("description");
				
				ProjectBean project = new ProjectBean();
				project.setProjectId(projectId);
				project.setTitle(title);
				project.setDescription(description);
				projects.add(project);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return projects;
	}
	
	
	public void deleteProject(int projectId) {
		
		try(Connection con = DbConnection.getConnection();
			
			PreparedStatement pstmt = con.prepareStatement("delete from project where projectId=?");
		){
			pstmt.setInt(1, projectId);
			int r = pstmt.executeUpdate();
			System.out.println(r + "record deleted...");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<ProjectBean> searchProject(String searchName){
		
		ArrayList<ProjectBean> projects=new ArrayList<>();
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from project where title like ?");
			pstmt.setString(1, searchName + "%");
			
			ResultSet rs =pstmt.executeQuery();
			
			
			
			while(rs.next()) {
				
				int projectId = rs.getInt("projectid");
				String title = rs.getString("title");
				String description = rs.getString("description");
				
				ProjectBean project = new ProjectBean();
				project.setProjectId(projectId);
				project.setTitle(title);
				project.setDescription(description);
				projects.add(project);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return projects;
	}
	
	
	public ProjectBean getProjectById(int projectId){
		
		ProjectBean project = new ProjectBean();
		
		try {
			Connection con = DbConnection.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select * from project where projectId = ?");
			pstmt.setInt(1, projectId);
			
			ResultSet rs =pstmt.executeQuery();
			
			
			
			while(rs.next()) {
				
				String title = rs.getString("title");
				String description = rs.getString("description");
				
				
				project.setProjectId(projectId);
				project.setTitle(title);
				project.setDescription(description);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return project;
	}
	
	
	
public void updateProject(ProjectBean project)  {
		
		
		try (Connection con = DbConnection.getConnection();
		PreparedStatement pstmt = con.prepareStatement("update  project set title=? ,description=? where projectid=?");){
	
		pstmt.setString(1, project.getTitle());
		pstmt.setString(2, project.getDescription());
		pstmt.setInt(3, project.getProjectId());
		
		pstmt.executeUpdate();
		
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}









	
}
	
	

