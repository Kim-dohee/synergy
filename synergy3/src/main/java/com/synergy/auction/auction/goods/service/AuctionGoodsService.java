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
	
	public int auctionGoodsInsert(AuctionGoodsDto auctionGoodsDto) { 
		int row = auctionGoodsDao.auctionGoodsInsert(auctionGoodsDto); 
		return row; 
	} 

	public List<AuctionGoodsDto> auctionGoodsSearch(AuctionGoodsDto auctionGoodsDto) { 
		return auctionGoodsDao.auctionGoodsSearch(auctionGoodsDto); 		
	}

	public AuctionGoodsDto auctionGoodsSelectOne(String auctionGoodsNo) { 
		return auctionGoodsDao.auctionGoodsSelectOne(auctionGoodsNo); 
	} 
	
	public BidDto bidSelectOne(String auctionGoodsNo) { 
		return auctionGoodsDao.bidSelectOne(auctionGoodsNo); 
	} 
	
	public int auctionGoodsHit(String auctionGoodsNo) { 
		return auctionGoodsDao.auctionGoodsHit(auctionGoodsNo); 
	}

	public int auctionGoodsUpdate(String auctionGoodsNo) {
		return auctionGoodsDao.auctionGoodsUpdate(auctionGoodsNo);
		
	} 
}
