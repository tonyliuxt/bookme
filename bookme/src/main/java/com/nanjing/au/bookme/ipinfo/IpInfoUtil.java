package com.nanjing.au.bookme.ipinfo;

import java.util.Collection;

import org.json.JSONObject;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.ClientHttpRequestFactory;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * IP info getting.
 * @author Gordon
 *
 */

public class IpInfoUtil {
	
	private static int IP_REQUEST_TIMEOUT = 2;
	private static String baseurl = "https://ipinfo.io/";
	private static String json = "/json";
	
	public static RestTemplate restTemplate = new RestTemplate(getClientHttpRequestFactory());

	private static ClientHttpRequestFactory getClientHttpRequestFactory() {
	    HttpComponentsClientHttpRequestFactory clientHttpRequestFactory = new HttpComponentsClientHttpRequestFactory();
	    clientHttpRequestFactory.setConnectTimeout(IP_REQUEST_TIMEOUT * 1000);
	    clientHttpRequestFactory.setReadTimeout(IP_REQUEST_TIMEOUT * 1000);
	    return clientHttpRequestFactory;
	}
	
	private static void getIpInfoVO(String ipaddr) {
		StringBuilder url = new StringBuilder();
		url.append(baseurl)
		   .append(ipaddr)
		   .append(json);
		
		try{
			
			restTemplate.setRequestFactory(getClientHttpRequestFactory());
	    	ResponseEntity<String> response = restTemplate.exchange(url.toString().replaceAll(" ", ""), HttpMethod.GET, null, String.class);
	    	String responseBody = response.getBody();
	    	JSONObject obj = new JSONObject(responseBody);
	    	ObjectMapper mapper = new ObjectMapper();
	    	
	    	IpInfoVO value = mapper.readValue(responseBody, IpInfoVO.class);
	    	System.out.println(value.getCity());
	    	
		}catch(Exception ex){
			ex.printStackTrace();
		}

	}
	
	public static void main(String args[]){
		getIpInfoVO("123.125.67.162");
	}
	
}
