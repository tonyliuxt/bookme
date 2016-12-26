package com.nanjing.au.bookme.push;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.client.RestTemplate;


public class PushNotification {

	/**
	 * Current All price list to 
	 * @param changedPriceList
	 */
	public static void RestTempPostData(List<String> changedPriceList){
	    RestTemplate restTemplate = new RestTemplate();
	    if(changedPriceList == null || changedPriceList.size() == 0) return;
	    Map<String, String> params = new HashMap<String, String>();
	    String[] aryinput = new String[changedPriceList.size()];
	    aryinput = changedPriceList.toArray(aryinput);
	    
	    try{
	    	String[] result = restTemplate.postForObject("URL", aryinput, String[].class, params);
	    }catch(Exception ex){
	    	ex.printStackTrace();
	    }
	}
}
