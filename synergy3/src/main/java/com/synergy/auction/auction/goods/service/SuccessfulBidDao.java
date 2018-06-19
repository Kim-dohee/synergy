package com.synergy.auction.auction.goods.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.user.service.UserDto;

@Repository
public class SuccessfulBidDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.auction.goods.service.SuccessfulBidMapper.";
	
	public int successfulBidInsert(Map<Object, Object> map) { 
		return sqlSession.insert(NS+"successfulBidInsert", map); 
	} 
	
	public int successfulBidNowInsert(Map<Object, Object> map) { 
		return sqlSession.insert(NS+"successfulBidNowInsert", map); 
	} 
	
	
	public SuccessfulBidDto successfulBidSelectOne(String auctionGoodsNo) { 
		if((sqlSession.selectOne(NS+"successfulBidSelectOne", auctionGoodsNo))==null) {
			return null;
		} else {
			return sqlSession.selectOne(NS+"successfulBidSelectOne", auctionGoodsNo); 
		}
		
	} 
	
}
