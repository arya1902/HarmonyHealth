package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ProjectBean;
import com.dao.ProjectDao;


public class RoleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String name = request.getParameter("name");
	
		ProjectBean projectBean = new ProjectBean();
		projectBean.setName(name);
		
		ProjectDao projectDao = new ProjectDao();
		projectDao.insertRole(projectBean);
		response.sendRedirect("RoleM.jsp");
	}

}
