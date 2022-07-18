package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


public class RegistrationFilter implements Filter {
	
	
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	

	

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		System.out.println("Filter---RegistrationFilter--doFilter()");
		String  firstName= request.getParameter("firstName");
		String  email= request.getParameter("email");
		String  password= request.getParameter("password");
		boolean isError = false;
		
		
		
		if(firstName == null || firstName.trim().length() == 0) {
			isError = true;
			request.setAttribute("firstNameError", "<font color=red>Please Enter FirstName</font>");
			
		}
		
		if(email == null || email.trim().length() == 0) {
			isError = true;
			request.setAttribute("emailError", "<font color=red>Please Enter Email</font>");
			
		}
		

		if(password == null || password.trim().length() == 0) {
			isError = true;
			request.setAttribute("passwordError", "<font color=red>Please Enter password</font>");
			
		}
		if(isError == true) {
			request.getRequestDispatcher("FilterRegistration.jsp").forward(request, response);
		}
		else {
			chain.doFilter(request, response);
		}
	}
	
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	
	

}
