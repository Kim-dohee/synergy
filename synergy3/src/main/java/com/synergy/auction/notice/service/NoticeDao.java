package com.synergy.auction.notice.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.admin.service.AdminMapper.";
	
	public int adminInsert(NoticeDto adminDto) { 
		int row = sqlSession.insert(NS+"adminInsert", adminDto); 
		return row; 
	} 

}
