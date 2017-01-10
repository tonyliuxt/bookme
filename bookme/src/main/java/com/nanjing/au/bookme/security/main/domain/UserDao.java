package com.nanjing.au.bookme.security.main.domain;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Component;

import com.nanjing.au.bookme.dao.StaticMongoTemplate;

/**
 * This is a hardcoded Dao, user configured here rather than in database
 * Later can be stored in db & encrypt pwd
 * @author tonyliu
 *
 */
@Component
public class UserDao {
	private final Logger mylogger = LoggerFactory.getLogger(UserDao.class);
	public static final String password = "";
	public static final String roleadmin = "ROLE_ADMIN";
	public static final String fullname = "Administrator";
	public static final String roleuser = "ROLE_USER";
	
	public User getByLogin(String login) {
		mylogger.info("auth to:" + login);
		if(login.contains("@")){
			return retrieveUser(login);
		}
		
		switch (login) {
			case "admin":
				return new User("admin", fullname, password, roleadmin);
			default: // loginname is deviceid; here should return a user
				return new User(login, fullname, password, roleadmin);
		}
	}
	
	private User retrieveUser(String login) {
		User user = new User();
		Query query = new Query();
		query.addCriteria(Criteria.where("login").is(login));
		User tmpuser = StaticMongoTemplate.getStaticMongoTemplate().findOne(query, User.class);
		if(tmpuser != null){
			return new User(tmpuser.getLogin(), tmpuser.getName(), tmpuser.getPassword(), tmpuser.getCode());
		}
		return user;
	}
}
