package com.synergy.auction.auction.goods.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.user.service.UserDto;

@Service
public class BidService {
	@Autowired
	private BidDao bidDao;
	
	public int bidInsert(Map<Object, Object> map) { 
		return bidDao.bidInsert(map);
	} 
	
	public int bidInsertAgaing(BidDto bidDto) { 
		return bidDao.bidInsertAgaing(bidDto);
	} 
}
