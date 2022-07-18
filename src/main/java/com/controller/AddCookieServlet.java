package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddCookieServlet")
public class AddCookieServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request , HttpServletResponse response)
			throws  ServletException ,IOException{
		
		String name = request.getParameter("name");
		String value = request.getParameter("value");
		
		boolean isError = false;
		
		if(name == null ||name.trim().length() == 0) {
			isError = true;
			request.setAttribute("nameError", "<font color=red>Please enter name</font>");
		}
		else {
			request.setAttribute("nameValue", name);
		}
		
		if(value == null ||value.trim().length() == 0) {
			isError = true;
			request.setAttribute("valueError", "<font color=red>Please enter value</font>");
		}
		else {
			request.setAttribute("valueValue", value);
		}
		
		RequestDispatcher rd = null;
		if(isError == true) {
			rd = request.getRequestDispatcher("AddCookie.jsp");
			
		}
		else  {
			rd = request.getRequestDispatcher("Home.jsp");
		}
		rd.forward(request, response);
	}

}
