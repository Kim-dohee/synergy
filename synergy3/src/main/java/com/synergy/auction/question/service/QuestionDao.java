package com.synergy.auction.question.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QuestionDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.question.service.QuestionMapper.";
	

}
