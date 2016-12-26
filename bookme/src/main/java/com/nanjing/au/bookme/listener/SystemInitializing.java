package com.nanjing.au.bookme.listener;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.nanjing.au.bookme.dao.StaticMongoTemplate;

/**
 * Desc: System initialize
 * Author: TonyLiu
 */
 
public class SystemInitializing implements ServletContextListener{
	
	private final Logger mylogger = LoggerFactory.getLogger(SystemInitializing.class);
	
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub

		StaticMongoTemplate.releaseMongoDBTemplate();
		
		System.gc();
     
		java.beans.Introspector.flushCaches();
		
	}
	
	public void contextInitialized(ServletContextEvent context) {
		// TODO Auto-generated method stub
		mylogger.info("Start contextInitializing...");
		
		mylogger.info("initSys contextInitialized.");
	}

}