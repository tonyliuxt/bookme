package com.nanjing.au.bookme.learnertest;

import java.util.List;

import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.mongodb.core.index.Index;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.nanjing.au.bookme.dao.StaticMongoTemplate;

/**
 * Base DAO for Question
 * @author Gordon
 *
 */

public class QuestionDAO {
	
	public static int totalCount(){
		int count = 0;
		Query query = new Query();
		
		count = (int) StaticMongoTemplate.getStaticMongoTemplate().count(query, QuestionsVO.class);
		return count;
	}
	
	public static List<QuestionsVO> findByPage(int pageNumber, int pageSize) {
		Query query = new Query();
		query.skip(pageSize * pageNumber);
		query.limit(pageSize);
		StaticMongoTemplate.getStaticMongoTemplate().indexOps(QuestionsVO.class).ensureIndex(new Index().on("_id", Direction.DESC));
		
		return StaticMongoTemplate.getStaticMongoTemplate().find(query, QuestionsVO.class);	
	}
	
	public static QuestionsVO findOne(int id){
		Query query = new Query();
		query.addCriteria(Criteria.where("id").is(id));
		return StaticMongoTemplate.getStaticMongoTemplate().findOne(query,QuestionsVO.class);	
	}
	
	public static int getMaxId(){
		int ret = -1;
		try{
			DBObject sort = new BasicDBObject();
			sort.put("_id", -1);
			DBCursor cursor = StaticMongoTemplate.getStaticMongoTemplate().getCollection("questionsVO").find().sort(sort).limit(1);
			if (cursor.hasNext()) {
				DBObject obj = cursor.next();
				String id = obj.get("_id").toString();
				if(id != null && id.length() > 0){
					ret = Integer.parseInt(id);
				}
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		return ret+1;
	}
	
}
