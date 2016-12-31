package com.nanjing.au.bookme.control;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.nanjing.au.bookme.GcmSender;
import com.nanjing.au.bookme.entity.WebMessage;

/**
 * RESTful Mobile Controller
 * @author Xintian
 *
 */
@RestController
@RequestMapping(value="/mobile")
public class RestMobileController {
	private final Logger mylogger = LoggerFactory.getLogger(RestMobileController.class);
	
	@RequestMapping(value="/settoken", method=RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE) 
	public @ResponseBody String setCurrentToken(@RequestBody String token, HttpServletRequest request) {
		if(token != null && token.length() > 0){
			mylogger.info("received token:" + token);
			GcmSender.API_TOKEN = token;
		}
		return token;
	}

	@RequestMapping(value="/getcontactmsg", method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE) 
	public @ResponseBody List<WebMessage> getContactMessage(HttpServletRequest request) {
		mylogger.info("Start getContactMessage ... ");
		List<WebMessage> result = new ArrayList<WebMessage>();
    		
    	try{
    		
    	}catch(Exception ex){
    		ex.printStackTrace();
    		mylogger.error(ex.getMessage());
    	}
    	
        return result;
    }
}
