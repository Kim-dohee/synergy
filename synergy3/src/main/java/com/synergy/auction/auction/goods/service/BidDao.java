package com.synergy.auction.auction.goods.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.user.service.UserDto;

@Repository
public class BidDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.auction.goods.service.BidMapper.";
	
	public int bidInsert(BidDto bidDto) { 
		return sqlSession.insert(NS+"bidInsert", bidDto); 
	} 
	
	public int bidInsertAgaing(BidDto bidDto) { 
		return sqlSession.insert(NS+"bidInsertAgaing", bidDto); 
	} 

}
