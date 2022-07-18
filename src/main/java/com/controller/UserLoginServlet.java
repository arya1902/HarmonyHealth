package com.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;

public class UserLoginServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request , HttpServletResponse response)
			throws ServletException ,IOException {
		
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			RequestDispatcher rd = null;
			
			String name = request.getParameter("name");
			String password = request.getParameter("pwd");
			HttpSession session = request.getSession();
			
			Connection con = DbConnection.getConnection(); 
			PreparedStatement pst = con.prepareStatement("select * from signup where name=? and password=?");
			pst.setString(1, name);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				session.setAttribute("name", rs.getString("name"));
				rd = request.getRequestDispatcher("AddProject.jsp");
				}else {
					request.setAttribute("status", "failed");
					rd = request.getRequestDispatcher("UserLogin.jsp");
				
				
				
			}
			
			rd.forward(request, response);
			
			
		}catch(Exception e){
			System.out.println(e);
		}
		
	
		
		}
	}

