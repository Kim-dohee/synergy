package com.synergy.auction.auction.goods.service;

import java.util.List;
import java.util.Map;

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

	public List<AuctionGoodsDto> auctionGoodsSelect(Map<String, Object> map) { 
		return sqlSession.selectList(NS+"auctionGoodsSelect", map); 		
	}
	//캐쉬사용내역 페이징을 위한 row수 구하기
	public int totalAuctionGoods() { 
		return sqlSession.selectOne(NS+"totalAuctionGoods"); 
	}
	
	public List<AuctionGoodsDto> auctionGoodsSelectUser(String userId) { 
		return sqlSession.selectList(NS+"auctionGoodsSelectUser", userId); 		
	}
	
	public List<AuctionGoodsDto> auctionGoodsSelectUserBid(String userId) { 
		return sqlSession.selectList(NS+"auctionGoodsSelectUserBid", userId); 		
	}
	
	public List<AuctionGoodsDto> auctionGoodsSelectsuccessfulBid(String userId) { 
		return sqlSession.selectList(NS+"auctionGoodsSelectsuccessfulBid", userId); 		
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
	
	public int auctionGoodsUpdatePay(int auctionGoodsNo) {
		return sqlSession.update(NS + "auctionGoodsUpdatePay", auctionGoodsNo); 
	} 
	
	public int auctionGoodsUpdateState(String auctionGoodsNo) {
		return sqlSession.update(NS + "auctionGoodsUpdateState", auctionGoodsNo); 
	} 
	
	public int auctionGoodsFileNoUpdate(AuctionGoodsDto auctionGoodsDto) {
		return sqlSession.update(NS + "auctionGoodsFileNoUpdate", auctionGoodsDto); 
	} 
	
	
}
