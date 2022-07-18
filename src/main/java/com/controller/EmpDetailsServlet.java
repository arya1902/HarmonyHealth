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


public class EmpDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			
				
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				
				int id = Integer.parseInt(request.getParameter("empId"));
				String n = request.getParameter("empName");
				String e = request.getParameter("email");
				int a = Integer.parseInt(request.getParameter("age"));
		
				Connection con = DbConnection.getConnection(); 
				PreparedStatement ps = con.prepareStatement("insert into emp values(?,?,?,?)");
				
				ps.setInt(1, id);
				ps.setString(2, n);
				ps.setString(3, e);
				ps.setInt(4, a);
				
				
				int i=ps.executeUpdate();
				if(i>0) {
					out.print("<h1>You are successfully registered....</h1>");
				}
				
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
