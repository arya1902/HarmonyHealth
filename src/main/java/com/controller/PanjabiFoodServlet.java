package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PanjabiFoodServlet")
public class PanjabiFoodServlet  extends HttpServlet{
	
	protected void service(HttpServletRequest request , HttpServletResponse response)
				throws ServletException ,IOException{
		
			String panjabi[] = request.getParameterValues("panjabi");
			boolean isError = false;
			
			
			if(panjabi== null || panjabi.length == 0) {
				isError = true;
				request.setAttribute("pError", "<font color=red>Please select menu</font>");
			}
			
			RequestDispatcher rd = null;
			if(isError == true) {
				rd = request.getRequestDispatcher("Panjabi.jsp");
				
			}
			else {
				rd = request.getRequestDispatcher("PanjabiTotal.jsp");
			}
			rd.forward(request, response);
			
				
		}
		
	}

