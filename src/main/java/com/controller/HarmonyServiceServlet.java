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


@WebServlet("/HarmonyServiceServlet")
public class HarmonyServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String plan=request.getParameter("plan");
			String name= request.getParameter("name");
			String add= request.getParameter("add");
			String iname= request.getParameter("iname");
			String date=request.getParameter("date");
			String gender=request.getParameter("gender");
			String status1 = request.getParameter("status1");
			
			
			RequestDispatcher rd= null;
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			Connection con = DbConnection.getConnection(); 
			PreparedStatement ps = con.prepareStatement("insert into service(plan,name,add,iname,date,gender,status1) values(?,?,?,?,?,?,?)");
			
			ps.setString(1, plan);
			ps.setString(2,name );
			ps.setString(3, add);
			ps.setString(4, iname);
			ps.setString(5, date);
			ps.setString(6,gender);
			ps.setString(7, status1);
			
			
			
			int i=ps.executeUpdate();
			
			rd = request.getRequestDispatcher("Service.jsp");
			
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


