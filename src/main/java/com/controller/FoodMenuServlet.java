package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FoodMenuServlet")
public class FoodMenuServlet  extends HttpServlet{

	protected void service(HttpServletRequest request , HttpServletResponse response)
				throws  ServletException ,IOException{
		
				String menu = request.getParameter("menu");
				boolean isError = false;
				
				if(menu == null) {
					isError = true;
					request.setAttribute("menuError","<br><font color=red>Please Select the menu <font>");
				}
				else {
					request.setAttribute("menuValue", menu);
				}
				
				RequestDispatcher rd = null;
				if(isError == true) {
					rd = request.getRequestDispatcher("Menu.jsp");
					
				}
				else  if(menu.equals("gujrati")){
					rd = request.getRequestDispatcher("Guj.jsp");
				}
				else if(menu.equals("panjabi")) {
					rd = request.getRequestDispatcher("Panjabi.jsp");
				}
				rd.forward(request, response);
				
				
				
				
	}
}
