package com.nanjing.au.bookme;

import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Hashtable;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.json.JSONObject;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.security.crypto.codec.Base64;
import org.springframework.util.Base64Utils;

import com.nanjing.au.bookme.dao.StaticMongoTemplate;
import com.nanjing.au.bookme.entity.RemoteInfo;

/**
 * OMT WEB Service Utility Library
 * @author tonyliu
 *
 */
public class UtilLibs {

	/**
	 * Get the special date format string
	 * @return
	 */
	public static String GetLocalDateFmt(String fmt){
		DateFormat dateFormat = null;
		if(fmt != null && fmt.length() > 0){
			try{
				dateFormat = new SimpleDateFormat(fmt);
			}catch(Exception ex){
				dateFormat = new SimpleDateFormat(Constants.SYS_TM_FMT);
				ex.printStackTrace();
			}
		}else{
	    	 dateFormat = new SimpleDateFormat(Constants.SYS_TM_FMT);
		}
    	Calendar cal = Calendar.getInstance();
    	return dateFormat.format(cal.getTime());
    	
	}
	
	
	/**
	 * Get current time with format and timezone;
	 * @return
	 */
	public static String GetCurrentTimeWithTMZ(String fmt, String tmzID){
		if(fmt == null || fmt.length() == 0){
			fmt = Constants.SYS_TM_FMT;
		}
		if(tmzID == null || tmzID.length() == 0){
			tmzID = Constants.SYS_TZ_VIC;
		}
		DateFormat dateFormat = null;
		try{
			dateFormat = new SimpleDateFormat(fmt);
		}catch(Exception ex){
			dateFormat = new SimpleDateFormat(Constants.SYS_TM_FMT);
			ex.printStackTrace();
		}
		
		TimeZone tmz = null;
		try{
			tmz = TimeZone.getTimeZone(tmzID);
			dateFormat.setTimeZone(tmz);
		}catch(Exception ex){
			tmz = TimeZone.getTimeZone(Constants.SYS_TZ_VIC);
			dateFormat.setTimeZone(tmz);
			ex.printStackTrace();
		}
		
    	Calendar cal = Calendar.getInstance();
    	return dateFormat.format(cal.getTime());
	}
	
	/**
	 * Get everyday 1AM time
	 * @return
	 */
	public static Date GetNextDayTime(int day, int clock, int min, int second, String timeZone){
		String datestr = "";
		Date dt = null;
		try{
			DateFormat dateFormat = null;
			dateFormat = new SimpleDateFormat(Constants.SYS_TM_FMT);
	    	Calendar cal = Calendar.getInstance();
	    	cal.add(Calendar.DAY_OF_YEAR, day);
	    	cal.set(Calendar.HOUR_OF_DAY, clock); 
	    	cal.set(Calendar.MINUTE,min);
	    	cal.set(Calendar.SECOND,second);
	    	if(timeZone == null || timeZone.length() == 0){
		    	cal.setTimeZone(TimeZone.getDefault());
	    	}else{
	    		try{
			    	cal.setTimeZone(TimeZone.getTimeZone(timeZone));
	    		}catch(Exception ex){
			    	cal.setTimeZone(TimeZone.getDefault());
	    			ex.printStackTrace();
	    		}
	    	}
	    	
	    	datestr = dateFormat.format(cal.getTime());
	    	dt = dateFormat.parse(datestr);
		}catch(Exception ex){
			ex.printStackTrace();
		}
    	
    	return dt;
	}
	
	/**
	 * Get tomorrow xAM in Victoria time zone
	 * @return
	 */
	public static Date GetNextDay3Am(){
		return GetNextDayTime(1, 3, 0, 0, Constants.SYS_TZ_VIC);
	}
	public static Date GetNextDay4Am(){
		return GetNextDayTime(1, 3, 0, 0, Constants.SYS_TZ_VIC);
	}
	
	public static Date GetNextDay5Am(){
		return GetNextDayTime(1, 5, 0, 0, Constants.SYS_TZ_VIC);
	}
	
	public static Date GetNextDay6Am(){
		return GetNextDayTime(1, 6, 0, 0, Constants.SYS_TZ_VIC);
	}
	public static Date GetNextDay7Am(){
		return GetNextDayTime(1, 7, 0, 0, Constants.SYS_TZ_VIC);
	}
	public static Date GetNextDay8Am(){
		return GetNextDayTime(1, 8, 0, 0, Constants.SYS_TZ_VIC);
	}
	public static Date GetNextDay9Am(){
		return GetNextDayTime(1, 9, 0, 0, Constants.SYS_TZ_VIC);
	}
	public static Date GetNextDay10Am(){
		return GetNextDayTime(1, 10, 0, 0, Constants.SYS_TZ_VIC);
	}
	public static Date GetNextDay20PM(){
		return GetNextDayTime(1, 20, 0, 0, Constants.SYS_TZ_VIC);
	}
	
	/**
	 * Get preferred date string
	 * @return
	 */
	public static String GetPreferDay(int day, String timeFmt, String timeZone){
		String datestr = "";
		// Date dt = null;
		try{
	    	if(timeZone == null || timeZone.length() == 0){
	    		timeZone = Constants.SYS_DT_FMT;
	    	}
			DateFormat dateFormat;
			dateFormat = new SimpleDateFormat(timeFmt);
	    	Calendar cal = Calendar.getInstance();
	    	cal.add(Calendar.DAY_OF_YEAR, day);
	    	
	    	if(timeZone == null || timeZone.length() == 0){
		    	cal.setTimeZone(TimeZone.getDefault());
	    	}else{
		    	cal.setTimeZone(TimeZone.getTimeZone(timeZone));
	    	}
	    	
	    	datestr = dateFormat.format(cal.getTime());
	    	// dt = dateFormat.parse(datestr);
		}catch(Exception ex){
			ex.printStackTrace();
		}
    	
    	return datestr;
	}
	
	/**
	 * Get Australia holidays list by a year
	 * {2016-01-01, 2016-01-26}
	 * @param year
	 */
	public static Hashtable<String,String> GetAustraliaHolidays(String year){
		Hashtable<String,String> ht = new Hashtable<String,String>();
		
		if(year == null || year.trim().length() == 0){
			Calendar cal = Calendar.getInstance();
			year = String.valueOf(cal.get(Calendar.YEAR));
		}
		
		for(String dt: Constants.AUSTRALIA_HOLIDAY){
			ht.put(year+dt, year);
		}
		
		return ht;
	}
	
	/**
	 * Convert timestr from UTC to timzID
	 * @return
	 */
	public static String ConvertTimeToTMZ(String timestr, String fmt, String tmzID){
		if(timestr == null || timestr.length() < 19){
			return "";
		}
		if(fmt == null || fmt.length() == 0){
			fmt = Constants.SYS_TM_FMT;
		}
		if(tmzID == null || tmzID.length() == 0){
			tmzID = Constants.SYS_TZ_VIC;
		}
		
		DateFormat dateFormat = new SimpleDateFormat(fmt);
		dateFormat.setTimeZone(TimeZone.getTimeZone(Constants.SYS_TZ_UTC));
		Date date = null;
		try{
			date = dateFormat.parse(timestr);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		DateFormat dateFormatOut = new SimpleDateFormat(fmt);
		dateFormatOut.setTimeZone(TimeZone.getTimeZone(tmzID));
		
    	return dateFormatOut.format(date);
	}
	
	public static JSONObject PreSetJSONObject(String datestr){
		String itemstr = "{\"Date\":\""+datestr+"\",\"Open\":0,\"High\":0,\"Low\":0,\"Close\":0,\"Volume\":0}";
		return new JSONObject(itemstr);
	}

	public static List<String> getWorkingDaysList(String startdt, int backCount) {
		List<String> ret = new ArrayList<String>();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");	    
		dateFormat.setTimeZone(TimeZone.getTimeZone(Constants.SYS_TZ_VIC));
	    Calendar startCal = Calendar.getInstance(TimeZone.getTimeZone(Constants.SYS_TZ_VIC));
		Date startDate;
		try {
			startDate = dateFormat.parse(startdt);
		    startCal.setTime(startDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	    do {  
	        startCal.add(Calendar.DAY_OF_MONTH, -1);  
	        if (startCal.get(Calendar.DAY_OF_WEEK) != Calendar.SATURDAY   
	        		&& startCal.get(Calendar.DAY_OF_WEEK) != Calendar.SUNDAY) 
	        {
	        	//System.out.println(dateFormat.format(startCal.getTime())+"Z");
	        	ret.add(dateFormat.format(startCal.getTime())+"Z");
	        	--backCount;
	        }  
	    } while (backCount > 0);  
	    
	    Collections.reverse(ret);
	    
	    return ret;  
	}
	
	/**
	 * Check if a string is Australian Holiday
	 * @param date
	 * @return
	 */
	public static boolean isAuHoliday(String date){
		boolean ret = false;
		if(date == null || date.trim().length() == 0){
			return ret;
		}
		
		if(GetAustraliaHolidays("").get(date) != null){
			ret = true;
		}
		return ret;
	}
	
	/**
	 * Check if the date is on weekend with Constants.SYS_DT_FMT
	 * @param date
	 * @return
	 */
	public static boolean isWeekend(String date){
		boolean ret = false;
		if(date == null || date.trim().length() == 0) return ret;
		String regexDateTime = "^(3[01]|[12][0-9]|0[1-9])/(1[0-2]|0[1-9])/([0-9]{4})$";
		Pattern patternDateTime = Pattern.compile(regexDateTime);
		Matcher matcherDateTime = patternDateTime.matcher(date);
		if(!matcherDateTime.matches()){
			return ret;
		}
		
		DateFormat dateFormat = new SimpleDateFormat(Constants.SYS_DT_FMT);	    
		dateFormat.setTimeZone(TimeZone.getTimeZone(Constants.SYS_TZ_VIC));
		Calendar cal = Calendar.getInstance(TimeZone.getTimeZone(Constants.SYS_TZ_VIC)); 
		Date startDate = null;
		try {
			startDate = dateFormat.parse(date);
			cal.setTime(startDate);
		    if(cal.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY || cal.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY){
		    	ret = true;
		    }
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	/**
	 * Check if the date is on weekend Constants.DATE_DT_FMT
	 * @param date
	 * @return
	 */
	public static boolean isWeekendFmt(String date){
		boolean ret = false;
		if(date == null || date.trim().length() == 0) return ret;
		String regexDateTime = "^([0-9]{4})-(1[0-2]|0[1-9])-(3[01]|[12][0-9]|0[1-9])$";
		Pattern patternDateTime = Pattern.compile(regexDateTime);
		Matcher matcherDateTime = patternDateTime.matcher(date);
		if(!matcherDateTime.matches()){
			return ret;
		}

		DateFormat dateFormat = new SimpleDateFormat(Constants.DATE_DT_FMT);	    
		dateFormat.setTimeZone(TimeZone.getTimeZone(Constants.SYS_TZ_VIC));
		Calendar cal = Calendar.getInstance(TimeZone.getTimeZone(Constants.SYS_TZ_VIC)); 
		Date startDate = null;
		try {
			startDate = dateFormat.parse(date);
			cal.setTime(startDate);
		    if((cal.get(Calendar.DAY_OF_WEEK) == Calendar.SATURDAY) || (cal.get(Calendar.DAY_OF_WEEK) == Calendar.SUNDAY)){
		    	ret = true;
		    }
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	/**
	 * Check a date is a Monday
	 * @param date
	 * @return
	 */
	public static boolean isMonday(String date){
		boolean ret = false;
		DateFormat dateFormat = new SimpleDateFormat(Constants.SYS_DT_FMT);	    
		dateFormat.setTimeZone(TimeZone.getTimeZone(Constants.SYS_TZ_VIC));
		Calendar cal = Calendar.getInstance(TimeZone.getTimeZone(Constants.SYS_TZ_VIC)); 
		Date startDate;
		try {
			startDate = dateFormat.parse(date);
			cal.setTime(startDate);
		    if(cal.get(Calendar.DAY_OF_WEEK) == Calendar.MONDAY){
		    	ret = true;
		    }
		} catch (ParseException e) {
			
		}
		return ret;
	}

	/**
	 * get a int random number
	 * @return
	 */
	public static int GetSysRandomNumber(){
		Random r = new Random();
		return Math.abs(r.nextInt());
	}
	
	/**
	 * get a random string for identity of batchid
	 * @return
	 */
	public static String GetSysRondomString(){
		StringBuffer ret = new StringBuffer();
	    Calendar cal = Calendar.getInstance();
	    ret.append(cal.getTimeInMillis());
		
		return ret.toString();
	}
	
	public static byte[] readFully(InputStream stream) throws IOException
	{
	    byte[] buffer = new byte[8192];
	    ByteArrayOutputStream baos = new ByteArrayOutputStream();

	    int bytesRead;
	    while ((bytesRead = stream.read(buffer)) != -1)
	    {
	        baos.write(buffer, 0, bytesRead);
	    }
	    return baos.toByteArray();
	}
	
	public static byte[] loadFile(String sourcePath) 
	{
	    InputStream inputStream = null;
	    try 
	    {
	        inputStream = new FileInputStream(sourcePath);
	        return readFully(inputStream);
	    }
	    catch (Exception ex){
	    	ex.printStackTrace();
	    }
	    finally
	    {
	        if (inputStream != null)
	        {
	            try {
					inputStream.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	        }
	    }
	    return null;
	}	
	
	/**
	 * Convert date format From Morning start to Paritech (previously use)
	 * @param datestr
	 * @return
	 */
	public static String convertDateFormat(String datestr){
		if(datestr == null || datestr.length() == 0){
			return datestr;
		}
		try{
			SimpleDateFormat fromFmt = new SimpleDateFormat("dd-MM-yyyy");
			SimpleDateFormat toFmt = new SimpleDateFormat("yyyy-MM-dd");
			Date dt = fromFmt.parse(datestr);
			String retstr = toFmt.format(dt)+"Z";
			return retstr;
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return "";
	}
		
	public static boolean canRunAsxUpdate(){
		boolean ret = false;
		String currentTime = GetCurrentTimeWithTMZ(Constants.USER_TM_FMT, Constants.SYS_TZ_VIC);
		if(isTimeBetweenTwoTime("10:00:00", "10:30:00", currentTime)){
			ret = true;
		}
		return ret;
	}
	
	// check a given time is between other two given time
	public static boolean isTimeBetweenTwoTime(String argStartTime, String argEndTime, String argCurrentTime) {
        boolean valid = false;
		try{
	        String reg = "^([0-9]|[0-1][0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])$";
	        //
	        if (argStartTime.matches(reg) && argEndTime.matches(reg) && argCurrentTime.matches(reg)) {
	            // Start Time
	            java.util.Date startTime = new SimpleDateFormat("HH:mm:ss").parse(argStartTime);
	            Calendar startCalendar = Calendar.getInstance();
	            startCalendar.setTime(startTime);

	            // Current Time
	            java.util.Date currentTime = new SimpleDateFormat("HH:mm:ss").parse(argCurrentTime);
	            Calendar currentCalendar = Calendar.getInstance();
	            currentCalendar.setTime(currentTime);

	            // End Time
	            java.util.Date endTime = new SimpleDateFormat("HH:mm:ss").parse(argEndTime);
	            Calendar endCalendar = Calendar.getInstance();
	            endCalendar.setTime(endTime);

	            if (currentTime.compareTo(endTime) < 0) {
	                currentCalendar.add(Calendar.DATE, 1);
	                currentTime = currentCalendar.getTime();
	            }

	            if (startTime.compareTo(endTime) < 0) {
	                startCalendar.add(Calendar.DATE, 1);
	                startTime = startCalendar.getTime();
	            }
	            if (currentTime.before(startTime)) {
	                valid = false;
	            } else {
	            	if (currentTime.after(endTime)) {
	                    endCalendar.add(Calendar.DATE, 1);
	                    endTime = endCalendar.getTime();
	                }
	                if (currentTime.before(endTime)) {
	                    valid = true;
	                } else {
	                    valid = false;
	                }
	            }
	            return valid;
	        } 
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return valid;
    }	
	
	public static String generateToken() {
		byte[] tokenBytes = new byte[64];
		new SecureRandom().nextBytes(tokenBytes);
		return new String(Base64.encode(tokenBytes), StandardCharsets.UTF_8);
	}
	
	public static String EncodePassword(String plPwd){
		if(plPwd != null && plPwd.length() > 0){
			return new String(Base64Utils.encodeToUrlSafeString(plPwd.getBytes()));
		}else{
			return plPwd;
		}
	}
	
	public static String DecodePassword(String enPwd){
		if(enPwd != null && enPwd.length() > 0){
			return new String(Base64Utils.decodeFromUrlSafeString(enPwd));
		}else{
			return enPwd;
		}
	}
	
	/**
	 * Get current date time in date format
	 * @return
	 */
	public static Date GetCurrentTime(){
		String datestr = "";
		Date dt = null;
		try{
			DateFormat dateFormat = null;
			dateFormat = new SimpleDateFormat(Constants.SYS_TM_FMT);
	    	Calendar cal = Calendar.getInstance();
	    	cal.setTimeZone(TimeZone.getDefault());
	    	datestr = dateFormat.format(cal.getTime());
	    	dt = dateFormat.parse(datestr);
		}catch(Exception ex){
			ex.printStackTrace();
		}
    	
    	return dt;
	}
	
	public static String GetRandomNumLetter(int len){
		final String alphabet = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789";
		final int N = alphabet.length();
		Random r = new Random();
		StringBuilder st = new StringBuilder();
	    for (int i = 0; i < len; i++) {
	        st.append(alphabet.charAt(r.nextInt(N)));
	    }
		return st.toString();
	}
	
	/**
	 * Record remote access into mongo
	 * @param request
	 * @return
	 */
    public static boolean recordClients(String ipaddress){
    	try{
    		String today = UtilLibs.GetLocalDateFmt(Constants.SYS_TM_FMT);
        	if(ipaddress == null) {
        		return false;
        	}
        	
    		Query query = new Query();
    		query.addCriteria(Criteria.where("ipaddress").is(ipaddress));
    		RemoteInfo retinfo = (RemoteInfo)StaticMongoTemplate.getStaticMongoTemplate().findOne(query, RemoteInfo.class);
    		Update update = new Update();
    		
    		if(retinfo != null){
        		update.set("totalcount", retinfo.getTotalcount().intValue() + 1);
        		update.set("lastdate", today);
    		}else{
        		update.set("firstdate", today);
        		update.set("totalcount", 1);
        		update.set("lastdate", today);
    		}
			StaticMongoTemplate.getStaticMongoTemplate().upsert(query, update, RemoteInfo.class);

    	}catch(Exception ex){
    		ex.printStackTrace();
    	}
    	return true;
    }
	
	
	/**
	 * Keeping the testing code below
	 * @param args
	 */
	public static void main(String[] args){
		System.out.print("---"+GetRandomNumLetter(6)+"---\n");
	    
		byte[] tokenBytes = new byte[64];
		new SecureRandom().nextBytes(tokenBytes);
		System.out.println("--base64:" + new String(Base64.encode(tokenBytes), StandardCharsets.UTF_8));

		String enpwd = EncodePassword("Omt@Mel123");
		System.out.println("---- 111 -----" + enpwd);
		System.out.println("---- 222 -----" + DecodePassword(enpwd));
		if(enpwd != null) return;
	}

}
