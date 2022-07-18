package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GujFoodServlet")
public class GujFoodServlet  extends HttpServlet{
	
	protected void service(HttpServletRequest request , HttpServletResponse response)
				throws ServletException ,IOException{
		
			String guj[] = request.getParameterValues("guj");
			boolean isError = false;
			
			
			if(guj == null || guj.length == 0 ) {
				isError = true;
				request.setAttribute("gujError", "<font color=red>Please select menu</font>");
				
			}
			
			RequestDispatcher rd = null;
			if(isError == true) {
				rd = request.getRequestDispatcher("Guj.jsp");
				
			}
			else {
				rd = request.getRequestDispatcher("GujTotal.jsp");
			}
			rd.forward(request, response);

				
		}
		
	}


