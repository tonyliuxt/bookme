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
	
	// 2 company
	private static final String COMPANY_BASE = MOBILE_REST_BASE + "/company";
	
	public static final String COMPANY_READ = COMPANY_BASE + COMMON_READ;
	public static final String COMPANY_CREATE = COMPANY_BASE + COMMON_CREATE;
	public static final String COMPANY_UPDATE = COMPANY_BASE + COMMON_UPDATE;
	public static final String COMPANY_DELETE = COMPANY_BASE + COMMON_DELETE;
	
	// 3 Notification
	private static final String NOTIFICATION_BASE = MOBILE_REST_BASE + "/notify";
	
	public static final String NOTIFICATION_READ = NOTIFICATION_BASE + COMMON_READ;
	public static final String NOTIFICATION_CREATE = NOTIFICATION_BASE + COMMON_CREATE;
	public static final String NOTIFICATION_UPDATE = NOTIFICATION_BASE + COMMON_UPDATE;
	public static final String NOTIFICATION_DELETE = NOTIFICATION_BASE + COMMON_DELETE;
	
	// 4 Media/Docs
	private static final String MEDIA_BASE = MOBILE_REST_BASE + "/docs";
	public static final String MEDIA_READ = MEDIA_BASE + COMMON_READ;
	public static final String MEDIA_CREATE = MEDIA_BASE + COMMON_CREATE;
	public static final String MEDIA_UPDATE = MEDIA_BASE + COMMON_UPDATE;
	public static final String MEDIA_DELETE = MEDIA_BASE + COMMON_DELETE;
	
	// 5 Key dates
	private static final String KEY_DATES_BASE = MOBILE_REST_BASE + "/keydates";
	
	public static final String KEYDATES_READ = KEY_DATES_BASE + COMMON_READ;
	public static final String KEYDATES_CREATE = KEY_DATES_BASE + COMMON_CREATE;
	public static final String KEYDATES_UPDATE = KEY_DATES_BASE + COMMON_UPDATE;
	public static final String KEYDATES_DELETE = KEY_DATES_BASE + COMMON_DELETE;
	
	// 6 links
	private static final String LINK_BASE = MOBILE_REST_BASE + "/links";
	
	public static final String LINK_READ = LINK_BASE + COMMON_READ;
	public static final String LINK_CREATE = LINK_BASE + COMMON_CREATE;
	public static final String LINK_UPDATE = LINK_BASE + COMMON_UPDATE;
	public static final String LINK_DELETE = LINK_BASE + COMMON_DELETE;
	
	// 7 update
	private static final String UPDATE_BASE = MOBILE_REST_BASE + "/update";
	
	public static final String UPDATE_READ = UPDATE_BASE + COMMON_READ;
	public static final String UPDATE_CREATE = UPDATE_BASE + COMMON_CREATE;
	public static final String UPDATE_UPDATE = UPDATE_BASE + COMMON_UPDATE;
	public static final String UPDATE_DELETE = UPDATE_BASE + COMMON_DELETE;
	
	// 8 watch list
	private static final String WATCHLIST_BASE = MOBILE_REST_BASE + "/watchlist";
	
	public static final String WATCHLIST_READ = WATCHLIST_BASE + COMMON_READ;
	public static final String WATCHLIST_CREATE = WATCHLIST_BASE + COMMON_CREATE;
	public static final String WATCHLIST_UPDATE = WATCHLIST_BASE + COMMON_UPDATE;
	public static final String WATCHLIST_DELETE = WATCHLIST_BASE + COMMON_DELETE;
	
	//---------------------------------------------------------------------------------------------------
	// web page
	public static final String WEB_WELCOME = MOBILE_WEB_BASE + "/welcome";
	public static final String WEB_LOGIN = MOBILE_WEB_BASE + "/login";
	public static final String WEB_LOGOUT = MOBILE_WEB_BASE + "/logout";
}
