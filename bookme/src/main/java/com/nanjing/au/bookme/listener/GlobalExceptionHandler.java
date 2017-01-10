package com.nanjing.au.bookme.listener;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import com.nanjing.au.bookme.UtilLibs;

@EnableWebMvc
@ControllerAdvice
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

	private Logger omtlogger = Logger.getLogger(GlobalExceptionHandler.class);
	
	@ExceptionHandler(Throwable.class)
    @ResponseBody
    ResponseEntity<Object> handleControllerException(HttpServletRequest request, Throwable ex) {
        Map<String,String> responseBody = new HashMap<>();
        // responseBody.put("path",request.getContextPath());
        responseBody.put("message","You do not have permission to access this document.");
        
    	omtlogger.info("NoHandlerFoundException with:"+request.toString());
    	UtilLibs.recordClients(request.getRemoteAddr());

		return new ResponseEntity<Object>(responseBody,HttpStatus.FORBIDDEN);
    }

    @Override
    protected ResponseEntity<Object> handleNoHandlerFoundException(NoHandlerFoundException ex, HttpHeaders headers, HttpStatus status, WebRequest request) {
        Map<String,String> responseBody = new HashMap<>();
        // responseBody.put("path",request.getContextPath());
        responseBody.put("message","You do not have permission to access this document.");
        try{
            if(request != null && request.toString() != null){
            	UtilLibs.recordClients(request.toString().split(";")[1].split("=")[1]);
            }
        }catch(Exception ex1){
        	ex1.printStackTrace();
        }
        
        return new ResponseEntity<Object>(responseBody,HttpStatus.FORBIDDEN);
    }
}