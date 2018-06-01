package com.synergy.auction.remove.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RemoveDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.remove.service.RemoveMapper.";
	
	public int remove(String id) { 
		int row = sqlSession.insert(NS+"adminInsert", id); 
		return row; 
	} 

}
