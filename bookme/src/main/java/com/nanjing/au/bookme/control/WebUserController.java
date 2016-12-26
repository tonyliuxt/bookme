package com.nanjing.au.bookme.control;


import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * WebpageController
 * WebpageController using for web page to query and operate user messages
 * @author tonyliu 
 */
@Controller
public class WebUserController {
	
	private Logger omtlogger = Logger.getLogger(WebUserController.class);
	
	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String index(HttpServletRequest request) {
    	omtlogger.info("Enter into index list...");
    	return "index";
	}
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String root(HttpServletRequest request) {
    	omtlogger.info("Enter into index list...");
    	return "index";
	}
}