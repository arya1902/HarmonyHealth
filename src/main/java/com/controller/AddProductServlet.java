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


@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pname = request.getParameter("pname");
		String price = request.getParameter("price");
		
		ProjectBean projectBean = new ProjectBean();
		projectBean.setPname(pname);
		projectBean.setPrice(price);
		
		UserDao userDao = new UserDao();
		userDao.insertProduct(projectBean);
		response.sendRedirect("AddProduct.jsp");
	}

}
