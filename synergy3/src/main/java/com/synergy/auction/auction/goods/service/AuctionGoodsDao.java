package com.synergy.auction.auction.goods.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.user.service.UserDto;

@Repository
public class AuctionGoodsDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.auction.goods.service.AuctionGoodsMapper.";
	
	public int auctionGoodsInsert(AuctionGoodsDto auctionGoodsDto) { 
		int row = sqlSession.insert(NS+"auctionGoodsInsert", auctionGoodsDto); 
		return row; 
	} 

	public List<AuctionGoodsDto> auctionGoodsSearch(AuctionGoodsDto auctionGoodsDto) { 
		return sqlSession.selectList(NS+"auctionGoodsSearch", auctionGoodsDto); 		
	}
	
	public AuctionGoodsDto auctionGoodsSelectOne(String auctionGoodsNo) { 
		return sqlSession.selectOne(NS + "auctionGoodsSelectOne", auctionGoodsNo); 
	} 
	
	public BidDto bidSelectOne(String auctionGoodsNo) { 
		return sqlSession.selectOne(NS + "bidSelectOne", auctionGoodsNo); 
	} 
	
	public int auctionGoodsHit(String auctionGoodsNo) { 
		return sqlSession.update(NS + "auctionGoodsHit", auctionGoodsNo); 
	}

	public int auctionGoodsUpdate(String auctionGoodsNo) {
		return sqlSession.update(NS + "auctionGoodsUpdate", auctionGoodsNo); 
	} 
}
