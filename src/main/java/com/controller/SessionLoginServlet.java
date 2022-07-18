package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email= request.getParameter("email");
		String password = request.getParameter("password");
		
		HttpSession session = request.getSession();
		//session.setAttribute("email", email);
		//session.setMaxInactiveInterval(60*17);
		response.sendRedirect("SessionHome.jsp");
		
	}

}
