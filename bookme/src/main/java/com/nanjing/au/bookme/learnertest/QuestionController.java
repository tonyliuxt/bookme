package com.nanjing.au.bookme.learnertest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nanjing.au.bookme.RestFulUri;
import com.nanjing.au.bookme.UtilLibs;
import com.nanjing.au.bookme.dao.StaticMongoTemplate;
import com.nanjing.au.bookme.entity.DataGridModel;


/**
 * Question CRUD Controller
 * @author Gordon
 *
 */

@Controller
public class QuestionController {
	private final Logger mylogger = LoggerFactory.getLogger(QuestionController.class);

	@RequestMapping(value=RestFulUri.WEB_QUESTIONS_LIST, method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> queryList(DataGridModel dgm) throws Exception{
		Map<String, Object> result = new HashMap<String, Object>(2); 
    	try{
    		List<QuestionsVO> list = QuestionDAO.findByPage(dgm.getPage()-1, dgm.getRows());
    		
    		result.put("total", QuestionDAO.totalCount());
    		result.put("rows", list);
    		mylogger.trace("Result of queryList size:"+list.size());
    		
    	}catch(Exception ex){
    		ex.printStackTrace();
    	}
	    return result;
	}
	
	
	/**
	 * Create a Question
	 * @param Question
	 * {ctitle=[aa], etitle=[bb], coption=[cc, dd, ee], eoption=[ff, gg, hh], imgpath=[ii], cinstruction=[jj], einstruction=[kk], answer=[ll]}
	 * @return Map<String, String>Result
	 */
    @RequestMapping(value=RestFulUri.WEB_QUESTIONS_ADD, method=RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
	public Map<String, String> createQuestion(@RequestBody MultiValueMap<String, String> formParams) {
    	mylogger.error("Start to createQuestion...with: "+formParams);
    	Map<String, String> map = new HashMap<String, String>();
    	
    	QuestionsVO uvo = new QuestionsVO();
    	if(formParams.getFirst("id") != null && formParams.getFirst("id").length() > 0){
        	uvo.setId(Integer.parseInt(formParams.getFirst("id")));
    	}else{
    		int id = QuestionDAO.getMaxId();
    		if(id == -1){
        		map.put("result", "Failed with wrong max id!");
        		return map;
    		}
    		uvo.setId(id);
    	}
    	
    	uvo.setCtitle(formParams.getFirst("ctitle"));
    	uvo.setEtitle(formParams.getFirst("etitle"));

    	uvo.setCinstruction(formParams.getFirst("cinstruction"));
    	uvo.setEinstruction(formParams.getFirst("einstruction"));

    	String ccoptions[] = new String[3];
    	ccoptions[0] = formParams.getFirst("coptions[0]");
    	ccoptions[1] = formParams.getFirst("coptions[1]");
    	ccoptions[2] = formParams.getFirst("coptions[2]");
    	uvo.setCoptions(ccoptions);
    	
    	String eeoptions[] = new String[3];
    	eeoptions[0] = formParams.getFirst("eoptions[0]");
    	eeoptions[1] = formParams.getFirst("eoptions[1]");
    	eeoptions[2] = formParams.getFirst("eoptions[2]");
    	uvo.setEoptions(eeoptions);

    	uvo.setImgpath(formParams.getFirst("imgpath"));
    	uvo.setAnswer(Integer.parseInt(formParams.getFirst("answer")));

    	try{
    		Query query = new Query();
    		query.addCriteria(Criteria.where("id").is(uvo.getId()));
    		
    		Update update = new Update();
    		update.set("etitle", uvo.getEtitle());
    		update.set("ctitle", uvo.getCtitle());
    		update.set("cinstruction", uvo.getCinstruction());
    		update.set("einstruction", uvo.getEinstruction());
    		update.set("coptions", uvo.getCoptions());
    		update.set("eoptions", uvo.getEoptions());
    		update.set("imgpath", uvo.getImgpath());
    		update.set("answer", uvo.getAnswer());
    		
    		StaticMongoTemplate.getStaticMongoTemplate().upsert(query, update, QuestionsVO.class);
    		map.put("result", "Success!");
    		
    	}catch(Exception ex){
    		ex.printStackTrace();
    		map.put("result", "Error: "+ex.getMessage());
    	}
    	return map;
	}

	/**
     * @Real
     * need to optimize for the random memory list
     */
    @RequestMapping(value=RestFulUri.WEB_QUESTIONS_RANDOMQT, produces=MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
	public QuestionsVO randomqt(HttpServletRequest request, @RequestParam("id") int id) {
    	UtilLibs.recordClients(request.getRemoteAddr());
    	QuestionsVO uvo = new QuestionsVO();
    	try{
    		if(id == -1){
    			uvo = QuestionDAO.findOne(1);
    		}else{
    			uvo = QuestionDAO.findOne(id);
    		}
    		if(uvo == null){
    			uvo = new QuestionsVO();
    		}
    	}catch(Exception ex){
    		ex.printStackTrace();
    	}
    	return uvo;
	}
    
	/**
     * @Real
     * This method will delete one record.
     */
    @RequestMapping(value=RestFulUri.WEB_QUESTIONS_DELETE, method=RequestMethod.POST)
    @ResponseBody
	public Map<String, String> delete(@RequestParam("id") String id) {
    	mylogger.info("Start to delete record...with id: "+id);
    	Map<String, String> map = new HashMap<String, String>(); 
    	if(id == null || id.length() == 0) {
    		map.put("result", "Failed with wrong parameter.");
    		return map;
    	}
    	
    	try{
    		Query query = new Query();
    		query.addCriteria(Criteria.where("id").is(id));
    		QuestionsVO uvo = StaticMongoTemplate.getStaticMongoTemplate().findOne(query, QuestionsVO.class);
    		
    		// Only normal or approved messages can be deleted
    		if(uvo == null){
    			map.put("result", "Failed to delete the record. Can't find this record.");
    		}else{
    			StaticMongoTemplate.getStaticMongoTemplate().remove(query, QuestionsVO.class);
    			map.put("result", "Successfully deleted the record.");
    		}
    	}catch(Exception ex){
    		ex.printStackTrace();
    		map.put("result", "Failed to delete the record.");
    	}
    	return map;
	}    
}
