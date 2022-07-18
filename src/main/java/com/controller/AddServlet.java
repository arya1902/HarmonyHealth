package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request , HttpServletResponse responce)
			throws ServletException ,IOException {
		
		System.out.println("AddServlet :: Service()");
		
		String x = request.getParameter("n1");
		String y = request.getParameter("n2");
		
		boolean isError = false;
		String error = "";
		if(x == null || x.trim().length() == 0) {
			isError = true;
			error = error + "<br> Please Enter n1";
		}
		if(y == null || y.trim().length() == 0) {
			isError = true;
			error = error + "<br> Please Enter n2";
		}
		responce.setContentType("text/html");
		PrintWriter out = responce.getWriter();
		out.print("<html><body>");
		
		if(isError == true) {
			out.print("ERROR :" + error);
		}
		else {
		
		System.out.println(x);
		System.out.println(y);
		
		int n1=Integer.parseInt(x);
		int n2= Integer.parseInt(y);
		
		int ans=n1 +n2;
		
			out.print("ans =" +ans);
		}
		out.print("</body></html>");
		
		
	}
}
