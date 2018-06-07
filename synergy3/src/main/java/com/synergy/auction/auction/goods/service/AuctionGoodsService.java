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


}
