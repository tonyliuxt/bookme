package com.nanjing.au.bookme.control;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nanjing.au.bookme.Constants;
import com.nanjing.au.bookme.GcmSender;
import com.nanjing.au.bookme.UtilLibs;
import com.nanjing.au.bookme.dao.StaticMongoTemplate;
import com.nanjing.au.bookme.entity.ContactMessage;
import com.nanjing.au.bookme.entity.WebMessage;
import com.nanjing.au.bookme.mail.MailSender;
import com.nanjing.au.bookme.mail.MailTaskVO;



/**
 * Contact Message
 * @author Xintian
 *
 */

@Controller
@RequestMapping("/contact")
public class ContactController {
	private Locale locale;
    @RequestMapping(value="/post", method=RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public Map<String, String> createMessage(Locale inlocale, ContactMessage contactmsg, HttpServletRequest request){
    	locale = inlocale;
    	Map<String, String> map = new HashMap<String, String>();
    	try{
    		String today = UtilLibs.GetLocalDateFmt(Constants.DATE_DT_FMT);
        	if(contactmsg == null || contactmsg.getEmail() == null) {
        		map.put("result", "Failed with wrong parameter.");
        		return map;
        	}
        	
    		Query query = new Query();
    		query.addCriteria(Criteria.where("ipaddress").is(request.getLocalAddr()));
    		query.addCriteria(Criteria.where("datetime").is(today));
    		
    		WebMessage webmessage = new WebMessage();
    		webmessage.setContactmsg(contactmsg);
    		webmessage.setSmssent(false);
    		webmessage.setSmssent(false);
    		webmessage.setCalled(false);
    		webmessage.setIpaddress(request.getRemoteAddr());
    		webmessage.setDatetime(today);
        	
    		int count = (int) StaticMongoTemplate.getStaticMongoTemplate().count(query, WebMessage.class);
    		if(count < 10){
    			StaticMongoTemplate.getStaticMongoTemplate().insert(webmessage);
    		}
    		
    		// Reply email
    		autoEmailReply(contactmsg);
    		
    		// Notify mobile
    		autoNotifyMobile(contactmsg);
    		
    	}catch(Exception ex){
    		ex.printStackTrace();
    		map.put("result", "Failed to create the message.");
    	}
    	return map;
    }
    
    private void autoEmailReply(ContactMessage contactmsg){
    	if(contactmsg == null || contactmsg.getEmail() == null){
    		return;
    	}
    	
    	MailTaskVO uvo = new MailTaskVO();
    	uvo.setLocale(locale);
    	uvo.setTo(contactmsg.getEmail());
    	uvo.setToWho(contactmsg.getName());
    	
    	MailSender.send(uvo);
    }
    
    private void autoNotifyMobile(ContactMessage contactmsg){
    	
    	MailTaskVO uvo = new MailTaskVO();
    	uvo.setLocale(locale);
    	uvo.setTo(contactmsg.getEmail());
    	uvo.setToWho(contactmsg.getName());
    	
    	GcmSender.sendGcmData(GcmSender.getNotification(uvo));
    }

	public Locale getLocale() {
		return locale;
	}

	public void setLocale(Locale locale) {
		this.locale = locale;
	}

}
