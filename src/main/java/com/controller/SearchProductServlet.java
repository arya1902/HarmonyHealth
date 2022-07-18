package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ProjectBean;
import com.dao.ProjectDao;
import com.dao.UserDao;


@WebServlet("/SearchProductServlet")
public class SearchProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String searchName  = request.getParameter("searchName");
		UserDao userDao =new UserDao();
		ArrayList<ProjectBean> products = userDao.searchProduct(searchName);
		request.setAttribute("products", products);
		request.getRequestDispatcher("ProductSearchResult.jsp").forward(request, response);
	}

}
