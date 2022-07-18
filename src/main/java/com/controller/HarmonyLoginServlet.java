package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.DbConnection;


@WebServlet("/HarmonyLoginServlet")
public class HarmonyLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			RequestDispatcher rd = null;
			
			String name = request.getParameter("name");
			String id = request.getParameter("pwd");
			HttpSession session = request.getSession();
			
			Connection con = DbConnection.getConnection(); 
			PreparedStatement pst = con.prepareStatement("select * from hsignup where name=? and id=?");
			pst.setString(1, name);
			pst.setString(2, id);
			
			ResultSet rs = pst.executeQuery();
			
			if(rs.next()) {
				session.setAttribute("name", rs.getString("name"));
				rd = request.getRequestDispatcher("HarmonyHome.jsp");
				}else {
					request.setAttribute("status", "failed");
					rd = request.getRequestDispatcher("HarmonyLogin.jsp");
				
				
				
			}
			
			rd.forward(request, response);
			
			
		}catch(Exception e){
			System.out.println(e);
		}
		
	}

}
