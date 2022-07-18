package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class PasswordFilter implements Filter {

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String  password= request.getParameter("password");
		boolean isError = false;
		
		if(password.length() <=7) {
			request.setAttribute("passwordError", "<font color=red>Please Enter 8 character</font>");
			request.getRequestDispatcher("FilterRegistration.jsp").forward(request, response);
		}
		else {
			chain.doFilter(request, response);
		
		}
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
