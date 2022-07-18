package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request , HttpServletResponse response)
			throws ServletException ,IOException{
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		boolean isError = false;
		
		
		if(email == null || email.trim().length() == 0) {
			isError = true;
			request.setAttribute("emailError", "<font color=red>Please Enter Email</font>");
			
		}else {
		
				request.setAttribute("emailValue", email);
		}
		
		
		
		
		if(password == null || password.trim().length() == 0 ) {
			isError = true;
			request.setAttribute("passwordError", "<font color=red>Please Enter password</font>");
			
		}else if(!password.equals("admin")){
			
				isError = true;
				request.setAttribute("passwordError", "<font color=red>Please Enter correct password</font>");
			}
		
		else{
			request.setAttribute("passwordValue", password);
		}
	                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
		RequestDispatcher rd = null;
		if(isError == true) {
			rd = request.getRequestDispatcher("Login.jsp");
			
		}
		else  {
			rd = request.getRequestDispatcher("Menu.jsp");
		}
		rd.forward(request, response);
	}

}
