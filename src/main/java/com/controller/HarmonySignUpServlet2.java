package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DbConnection;


@WebServlet("/HarmonySignUpServlet2")
public class HarmonySignUpServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			try {
				String name = request.getParameter("name");
				String lname = request.getParameter("lname");
				String email = request.getParameter("email");
				String id = request.getParameter("pwd");
				int no = Integer.parseInt(request.getParameter("no"));
				String address = request.getParameter("adr");
				String pin = request.getParameter("pin");
				RequestDispatcher rd = null;
				
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				
				Connection con = DbConnection.getConnection(); 
				PreparedStatement ps = con.prepareStatement("insert into hsignup(name,lname,email,id,no,address,pin) values(?,?,?,?,?,?,?)");
				
				
				ps.setString(1, name);
				ps.setString(2,lname );
				ps.setString(3, email);
				ps.setString(4, id);
				ps.setInt(5, no);
				ps.setString(6,address);
				ps.setString(7, pin);
				
				int i=ps.executeUpdate();
				rd = request.getRequestDispatcher("HarmonySignUp2.jsp");
				
				if(i>0) {
					request.setAttribute("status", "success");
				}
				else {
					request.setAttribute("status", "failed");
				}
				rd.forward(request, response);
			}catch(Exception e) {
					System.out.println(e);
			}
		
	}
}

		
		
	


