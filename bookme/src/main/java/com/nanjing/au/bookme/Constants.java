package com.nanjing.au.bookme;

/**
 * Define all system static parameters
 * @author tonyliu
 *
 */
public class Constants {
	// user status
	public static final Integer STATUS_NORMAL = 1;
	public static final Integer STATUS_DELETED = 2;
	
	// user sign up code length
	public static final Integer CODE_LENGHT = 6;
	
	// common date time format
	public static final String SYS_TZ_VIC = "Australia/Victoria";
	public static final String SYS_TZ_UTC = "UTC";
	public static final String SYS_TZ_EDT = "EDT";
	public static final String SYS_TM_FMT = "dd/MM/yyyy HH:mm:ss";
	public static final String SYS_DT_FMT = "dd/MM/yyyy";
	public static final String DATE_DT_FMT = "yyyy-MM-dd";
	public static final String MS_DT_FMT = "dd-MM-yyyy";
	public static final String USER_TM_FMT = "HH:mm:ss";
	
	public static final String[] AUSTRALIA_HOLIDAY = {
			"-01-01",
			"-01-26",
			"-03-25",
			"-03-28",
			"-04-25",
			"-06-13",
			"-12-26",
			"-12-27",
			"-12-30"
	};
}
