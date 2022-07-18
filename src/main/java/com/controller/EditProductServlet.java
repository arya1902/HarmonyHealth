package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ProjectBean;
import com.dao.ProjectDao;
import com.dao.UserDao;


@WebServlet("/EditProductServlet")
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productid = Integer.parseInt(request.getParameter("productid"));
		
		UserDao userDao = new UserDao();
		ProjectBean product= userDao.getProductById(productid);
		request.setAttribute("product", product);
		
		request.getRequestDispatcher("EditProduct.jsp").forward(request, response);
	}

}
