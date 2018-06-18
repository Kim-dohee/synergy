package com.synergy.auction.auction.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.user.service.UserDto;

@Service
public class SuccessfulBidService {
	@Autowired
	private AuctionGoodsDao auctionGoodsDao;
	
	//상품 등록
	public int successfulBidInsert(String auctionGoodsNo) {
		return 0; 
		
	} 

	
}
