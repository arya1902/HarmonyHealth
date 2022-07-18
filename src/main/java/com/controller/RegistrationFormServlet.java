package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;


public class RegistrationFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name= request.getParameter("name");
		String password = request.getParameter("pwd");
		String email=request.getParameter("email");
		String mobile = request.getParameter("no");
		
		try {
			
			Connection con = DbConnection.getConnection(); 
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, password);
			ps.setString(3, email);
			ps.setInt(4, Integer.parseInt(mobile));
			
			int i= ps.executeUpdate();
			if(i>0) {
				out.println("Registration Successfully..");
				
			}
			
			
			
		}catch(Exception e) {
			System.out.println(e);
			
		}
		out.close();
	}

}
