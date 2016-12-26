package com.nanjing.au.bookme.control;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.nanjing.au.bookme.RestFulUri;
import com.nanjing.au.bookme.entity.ResultVO;

import javax.servlet.http.HttpServletRequest;

/**
 * RestfulController CRUD for User Entity
 * @version v0.1
 * @author tony.liu 
 * @since 2016/10/14
 */

@RestController
public class RestUserController  
{
	private final Logger mylogger = LoggerFactory.getLogger(RestUserController.class);

    /**
     * Read MUser with id or email (optional)
     * @param email
     * @return
     */
	@RequestMapping(value=RestFulUri.USER_LOGIN, method=RequestMethod.GET, produces=MediaType.APPLICATION_JSON_VALUE) 
	public @ResponseBody ResultVO userLogin(HttpServletRequest request) {
		mylogger.info("Start userLogin ... ");
    	ResultVO ret = new ResultVO();
    		
    	try{
    		
    	}catch(Exception ex){
    		ex.printStackTrace();
    		mylogger.error(ex.getMessage());
    	}
    	mylogger.info("End userLogin with result:" + ret);
        return ret;
    }

}
