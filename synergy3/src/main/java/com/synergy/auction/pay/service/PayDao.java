package com.synergy.auction.pay.service;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PayDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.admin.service.PayMapper.";
	
	public int payInsert() { 
		return sqlSession.insert(NS+"payInsert"); 
	} 

}
