package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.ProjectBean;
import com.dao.ProjectDao;


public class UserDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String mail = request.getParameter("mail");
		String pwd =request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String no = request.getParameter("no");
		String date = request.getParameter("date");
		String at = request.getParameter("at");
		String sub = request.getParameter("sub");
		
		ProjectBean projectBean = new ProjectBean();
		projectBean.setName(fname);
		projectBean.setLname(lname);
		projectBean.setMail(mail);
		projectBean.setPwd(pwd);
		projectBean.setGender(gender);
		projectBean.setNo(no);
		projectBean.setDate(date);
		projectBean.setSub(sub);
		
		ProjectDao projectDao = new ProjectDao();
		projectDao.insertUserDetails(projectBean);
		response.sendRedirect("UserDetails.jsp");
	}

}
