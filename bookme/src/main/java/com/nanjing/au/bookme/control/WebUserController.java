package com.nanjing.au.bookme.control;


import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.mongodb.core.index.Index;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nanjing.au.bookme.UtilLibs;
import com.nanjing.au.bookme.dao.StaticMongoTemplate;
import com.nanjing.au.bookme.entity.DataGridModel;
import com.nanjing.au.bookme.entity.RemoteInfo;


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
    	omtlogger.info("/index with language:" + locale + "... Ip address:"+request.getRemoteAddr());
    	//UtilLibs.recordClients(request.getRemoteAddr());
    	return "index";
	}
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String root(Locale locale,HttpServletRequest request) {
    	omtlogger.info("/ ROOT... with language:" + locale + "... Ip address:"+request.getRemoteAddr());
    	//UtilLibs.recordClients(request.getRemoteAddr());
    	return "index";
	}

	@RequestMapping(value="/web", method = RequestMethod.GET)
	public String web(Locale locale,HttpServletRequest request) {
    	omtlogger.info("/ web... with language:" + locale + "... Ip address:"+request.getRemoteAddr());
    	//UtilLibs.recordClients(request.getRemoteAddr());
    	return "web";
	}

	@RequestMapping(value="/handy", method = RequestMethod.GET)
	public String handy(Locale locale,HttpServletRequest request) {
    	omtlogger.info("/ handy... with language:" + locale + "... Ip address:"+request.getRemoteAddr());
    	//UtilLibs.recordClients(request.getRemoteAddr());
    	return "handy";
	}
	
	@RequestMapping(value="/manage/accesslist", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> queryList(DataGridModel dgm) throws Exception{
		Map<String, Object> result = new HashMap<String, Object>(2); 
    	try{
    		List<RemoteInfo> list = findByPage(dgm.getPage()-1, dgm.getRows());
    		
    		result.put("total", totalCount());
    		result.put("rows", list);
        	omtlogger.trace("Result of queryList size:"+list.size());
    		
    	}catch(Exception ex){
    		ex.printStackTrace();
    	}
	    return result;
	}
	
	private int totalCount(){
		int count = 0;
		Query query = new Query();
		
		count = (int) StaticMongoTemplate.getStaticMongoTemplate().count(query, RemoteInfo.class);
		return count;
	}
	public List<RemoteInfo> findByPage(int pageNumber, int pageSize) {
		Query query = new Query();
		query.addCriteria(Criteria.where("ipaddress").exists(true));
		query.with(new Sort(Sort.Direction.DESC, "datetime"));
		query.skip(pageSize * pageNumber);
		query.limit(pageSize);
		StaticMongoTemplate.getStaticMongoTemplate().indexOps(RemoteInfo.class).ensureIndex(new Index().on("lastdate", Direction.DESC));
		
		return StaticMongoTemplate.getStaticMongoTemplate().find(query, RemoteInfo.class);	
	}	
}