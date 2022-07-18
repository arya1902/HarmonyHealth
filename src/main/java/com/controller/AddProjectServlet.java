package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ProjectBean;
import com.dao.ProjectDao;

public class AddProjectServlet extends HttpServlet {

    
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		
		ProjectBean projectBean = new ProjectBean();
		projectBean.setTitle(title);
		projectBean.setDescription(description);
		
		ProjectDao projectDao = new ProjectDao();
		projectDao.insertProject(projectBean);
		response.sendRedirect("AddProject.jsp");
	
	}

}
