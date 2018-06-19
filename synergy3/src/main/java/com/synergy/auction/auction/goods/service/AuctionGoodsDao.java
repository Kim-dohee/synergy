package com.synergy.auction.auction.goods.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class AuctionGoodsDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.auction.goods.service.AuctionGoodsMapper.";
	
	public int auctionGoodsInsert(AuctionGoodsDto auctionGoodsDto) { 
		sqlSession.insert(NS+"auctionGoodsInsert", auctionGoodsDto); 
		return auctionGoodsDto.getAuctionGoodsNo(); 
	} 

	public List<AuctionGoodsDto> auctionGoodsSearch() { 
		return sqlSession.selectList(NS+"auctionGoodsSearch"); 		
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
	
	public int auctionGoodsFileNoUpdate(AuctionGoodsDto auctionGoodsDto) {
		return sqlSession.update(NS + "auctionGoodsFileNoUpdate", auctionGoodsDto); 
	} 
	
	
}
