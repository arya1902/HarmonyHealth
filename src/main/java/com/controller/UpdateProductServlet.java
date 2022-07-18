package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ProjectBean;
import com.dao.UserDao;


@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productid = Integer.parseInt(request.getParameter("productid"));
		String pname = request.getParameter("pname");
		String price = request.getParameter("price");
		
		ProjectBean projectBean = new ProjectBean();
		projectBean.setPname(pname);
		projectBean.setPrice(price);
		projectBean.setProductid(productid);

		UserDao userDao = new UserDao();
		userDao.updateProduct(projectBean);
		response.sendRedirect("ListProductServlet");
	}

}
