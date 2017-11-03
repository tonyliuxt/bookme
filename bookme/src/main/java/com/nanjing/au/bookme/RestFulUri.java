package com.nanjing.au.bookme;

/**
 * RESTFul API URI defined here
 * @author tonyliu
 *
 */
public class RestFulUri {
	
	//---------------------------------------------------------------------------------------------------
	// global configuration
	private static final String MOBILE_REST_BASE = "/mobile";
	private static final String MOBILE_WEB_BASE = "/web";
	
	private static final String COMMON_READ = "/read";
	private static final String COMMON_CREATE = "/create";
	private static final String COMMON_UPDATE = "/update";
	private static final String COMMON_DELETE = "/delete";
	
	private static final String COMMON_LOGIN = "/login";
	private static final String COMMON_SIGNUP_FIRST = "/signupfirst";
	private static final String COMMON_SIGNUP_SECOND = "/signupsecond";
	private static final String COMMON_RESETPWD_FIRST = "/resetpwdone";
	private static final String COMMON_RESETPWD_SECOND = "/resetpwdtwo";
	

	//---------------------------------------------------------------------------------------------------
	// 0 token security
	private static final String REST_TOKEN_BASE = MOBILE_REST_BASE + "/token";
	
	private static final String REST_TOKEN_NEW = MOBILE_REST_BASE + "/new";
	private static final String REST_TOKEN_REFRESH = MOBILE_REST_BASE + "/refresh";
	
	public static final String SECURITY_TOKEN_NEW = REST_TOKEN_BASE + REST_TOKEN_NEW;
	public static final String SECURITY_TOKEN_REFRESH = REST_TOKEN_BASE + REST_TOKEN_REFRESH;
	
	// 1 user 
	private static final String USER_BASE = MOBILE_REST_BASE + "/user";
	
	public static final String USER_READ =  USER_BASE + COMMON_READ;
	public static final String USER_CREATE =  USER_BASE + COMMON_CREATE;
	public static final String USER_UPDATE =  USER_BASE + COMMON_UPDATE;
	public static final String USER_DELETE =  USER_BASE + COMMON_DELETE;
	
	public static final String USER_LOGIN =  USER_BASE + COMMON_LOGIN;
	public static final String USER_RESETPWD_FIRST =  USER_BASE + COMMON_RESETPWD_FIRST;
	public static final String USER_RESETPWD_SECOND =  USER_BASE + COMMON_RESETPWD_SECOND;
	public static final String USER_SIGNUP_FIRST =  USER_BASE + COMMON_SIGNUP_FIRST;
	public static final String USER_SIGNUP_SECOND =  USER_BASE + COMMON_SIGNUP_SECOND;

	
	//---------------------------------------------------------------------------------------------------
	// web page
	public static final String WEB_WELCOME =  "/welcome";
	public static final String WEB_LOGIN =  "/login";
	public static final String WEB_LOGOUT = "/logout";
	public static final String WEB_MANAGE = "/manage";
	public static final String WEB_QUESTIONS = "/questions";
	public static final String WEB_STATICS = "/statics";

	public static final String WEB_QUESTIONS_LIST = WEB_QUESTIONS + "/list";
	public static final String WEB_QUESTIONS_ADD = WEB_QUESTIONS + "/add";
	public static final String WEB_QUESTIONS_EDIT = WEB_QUESTIONS + "/edit";
	public static final String WEB_QUESTIONS_DELETE = WEB_QUESTIONS + "/del";
	public static final String WEB_QUESTIONS_RANDOMQT = "/randomqt";

}
