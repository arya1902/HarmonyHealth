package com.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ConfigLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String cEmail,cPassword;
	public void init(ServletConfig config) {
		cEmail = config.getInitParameter("email");
		cPassword = config.getInitParameter("password");
	}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		ServletContext sc = request.getServletContext();
		String gmail = sc.getInitParameter("email");
		 if(email.equals(cEmail) && password.equals(cPassword)) {
			 
		 }
		 else {
			 request.setAttribute("error", "Invalid....");
			 request.getRequestDispatcher("ConfigLogin.jsp").forward(request, response);
		 }
		
	}

}
