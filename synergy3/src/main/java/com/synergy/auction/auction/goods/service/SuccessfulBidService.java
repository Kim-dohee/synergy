package com.synergy.auction.auction.goods.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.user.service.UserDto;

@Transactional
@Service
public class SuccessfulBidService {
	@Autowired
	private SuccessfulBidDao successfulBidDao;
	
	//낙찰 등록
	public int successfulBidInsert(Map<Object, Object> map) {
		return successfulBidDao.successfulBidInsert(map); 
		
	} 
	//즉시구매시 낙찰 등록
	public int successfulBidNowInsert(Map<Object, Object> map) {
		return successfulBidDao.successfulBidNowInsert(map); 
		
	} 
	//낙찰 1번만등록되게 하기위해서 낙찰 조회(존재하면 등록 안함)
	public SuccessfulBidDto successfulBidSelectOne(String auctionGoodsNo) {
		return successfulBidDao.successfulBidSelectOne(auctionGoodsNo); 
		
	} 

	
}
