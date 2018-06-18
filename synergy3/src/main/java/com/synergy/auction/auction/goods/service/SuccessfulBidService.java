package com.synergy.auction.auction.goods.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.user.service.UserDto;

@Service
public class SuccessfulBidService {
	@Autowired
	private SuccessfulBidDao successfulBidDao;
	
	//상품 등록
	public int successfulBidInsert(Map<Object, Object> map) {
		return successfulBidDao.successfulBidInsert(map); 
		
	} 
	
	public int successfulBidNowInsert(Map<Object, Object> map) {
		return successfulBidDao.successfulBidNowInsert(map); 
		
	} 

	
}
