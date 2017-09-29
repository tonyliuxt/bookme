package com.nanjing.au.bookme.ipinfo;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.client.ClientHttpRequestFactory;
import org.springframework.http.client.HttpComponentsClientHttpRequestFactory;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.nanjing.au.bookme.dao.StaticMongoTemplate;
import com.nanjing.au.bookme.entity.RemoteInfo;

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
	
	/**
	 * 根据IP地址获取IPInfo
	 * @param ipaddr
	 * @return
	 */
	public static IpInfoVO getIpInfoVO(String ipaddr) {
		IpInfoVO value = new IpInfoVO();
		if(ipaddr == null || ipaddr.equals("")){
			return value;
		}

		StringBuilder url = new StringBuilder();
		url.append(baseurl).append(ipaddr).append(json);
		
		try{
			
			restTemplate.setRequestFactory(getClientHttpRequestFactory());
	    	ResponseEntity<String> response = restTemplate.exchange(url.toString().replaceAll(" ", ""), HttpMethod.GET, null, String.class);
	    	String responseBody = response.getBody();
	    	//JSONObject obj = new JSONObject(responseBody);// can be used as obj.getValue()
	    	
	    	ObjectMapper mapper = new ObjectMapper();
	    	
	    	value = mapper.readValue(responseBody, IpInfoVO.class);
	    	System.out.println(value.getCity());
	    	
		}catch(Exception ex){
			ex.printStackTrace();
		}

		return value;
	}

	/**
	 * 将获取的信息更新到数据库
	 * @param ipaddress
	 * @return
	 */
    public static boolean updateClients(String ipaddress){
    	try{
        	if(ipaddress == null) {
        		return false;
        	}
        	
    		Query query = new Query();
    		query.addCriteria(Criteria.where("ipaddress").is(ipaddress));
    		RemoteInfo retinfo = (RemoteInfo)StaticMongoTemplate.getStaticMongoTemplate().findOne(query, RemoteInfo.class);
    		Update update = new Update();
    		
    		if(retinfo != null){
    			IpInfoVO ipinfo = getIpInfoVO(ipaddress);
        		update.set("ipinfo", ipinfo);
    		}
			StaticMongoTemplate.getStaticMongoTemplate().updateFirst(query, update, RemoteInfo.class);

    	}catch(Exception ex){
    		ex.printStackTrace();
    	}
    	return true;
    }
	
	public static void main(String args[]){
		getIpInfoVO("123.125.67.162");
	}
	
}
