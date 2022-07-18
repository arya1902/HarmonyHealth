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


@WebServlet("/ServiceServlet")
public class ServiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String time= request.getParameter("time");
			String adate=request.getParameter("adate");
			String pname =request.getParameter("pname");
			String dname=request.getParameter("dname");
			
			RequestDispatcher rd= null;
			
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			
			Connection con = DbConnection.getConnection(); 
			PreparedStatement ps1 = con.prepareStatement("insert into app(time,adate,pname,dname) values(?,?,?,?)");
			
			ps1.setString(1, time);
			ps1.setString(2,adate );
			ps1.setString(3, pname);
			ps1.setString(4, dname);
			int j=ps1.executeUpdate();
			rd = request.getRequestDispatcher("Service.jsp"); 
			if(j>0) {
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
