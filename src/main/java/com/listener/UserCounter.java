package com.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.util.UserStats;

public class UserCounter implements HttpSessionListener  {
	
	public void sessionCreated(HttpSessionEvent se) {
		UserStats.userCounter++;
		System.out.println("log in =>" +UserStats.userCounter);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		UserStats.userCounter--;
		System.out.println("Log out =>" +UserStats.userCounter);
		
	}

}
class A implements ServletContextListener{
	
	public void contextInitiallized(ServletContextEvent sce) {
		
	}
	public void contextDestroyed(ServletContextEvent sce){
		
	}
	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}
class B implements ServletRequestAttributeListener{

	@Override
	public void attributeAdded(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attributeRemoved(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void attributeReplaced(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
		
	}
	
}