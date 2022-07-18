package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ProjectBean;
import com.dao.ProjectDao;
import com.dao.UserDao;
import com.util.DbConnection;


@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {

		
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDao userDao = new UserDao();
		ArrayList<ProjectBean> products = userDao.getAllProducts();
		
		request.setAttribute("products", products);
		request.getRequestDispatcher("Cart.jsp").forward(request, response);;
	}

}
