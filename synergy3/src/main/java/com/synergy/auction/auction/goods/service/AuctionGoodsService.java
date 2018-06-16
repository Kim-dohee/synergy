package com.synergy.auction.auction.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.user.service.UserDto;

@Service
public class AuctionGoodsService {
	@Autowired
	private AuctionGoodsDao auctionGoodsDao;
	
	//상품 등록
	public int auctionGoodsInsert(AuctionGoodsDto auctionGoodsDto) { 
		int row = auctionGoodsDao.auctionGoodsInsert(auctionGoodsDto); 
		return row; 
	} 

	//상품 리스트
	public List<AuctionGoodsDto> auctionGoodsSearch() { 
		return auctionGoodsDao.auctionGoodsSearch(); 		
	}

	//상품 상세 보기를위한 검색
	public AuctionGoodsDto auctionGoodsSelectOne(String auctionGoodsNo) { 
		return auctionGoodsDao.auctionGoodsSelectOne(auctionGoodsNo); 
	} 
	
	//입찰 1순위 검색
	public BidDto bidSelectOne(String auctionGoodsNo) { 
		return auctionGoodsDao.bidSelectOne(auctionGoodsNo); 
	} 
	
	//조회수 증가
	public int auctionGoodsHit(String auctionGoodsNo) { 
		return auctionGoodsDao.auctionGoodsHit(auctionGoodsNo); 
	}

	//입찰이 시작되면 시작날짜, 종료날짜, 상태 변경
	public int auctionGoodsUpdate(String auctionGoodsNo) {
		return auctionGoodsDao.auctionGoodsUpdate(auctionGoodsNo);
		
	} 
	
	public int auctionGoodsFileNoUpdate(AuctionGoodsDto auctionGoodsDto) {
		return auctionGoodsDao.auctionGoodsFileNoUpdate(auctionGoodsDto);
		
	} 
}
