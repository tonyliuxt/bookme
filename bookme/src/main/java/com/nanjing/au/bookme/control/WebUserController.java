package com.nanjing.au.bookme.control;


import java.util.Locale;

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
	public String index(Locale locale, HttpServletRequest request) {
    	omtlogger.info("Enter index list... with language:" + locale + "... Ip address:"+request.getRemoteAddr());
    	return "index";
	}
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String root(Locale locale,HttpServletRequest request) {
    	omtlogger.info("Enter index list... with language:" + locale + "... Ip address:"+request.getRemoteAddr());
    	return "index";
	}
}