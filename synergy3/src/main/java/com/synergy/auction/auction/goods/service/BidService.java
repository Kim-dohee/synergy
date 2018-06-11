package com.synergy.auction.auction.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.user.service.UserDto;

@Service
public class BidService {
	@Autowired
	private BidDao bidDao;
	
	public int bidInsert(BidDto bidDto) { 
		return bidDao.bidInsert(bidDto);
	} 
	
	public int bidInsertAgaing(BidDto bidDto) { 
		return bidDao.bidInsertAgaing(bidDto);
	} 
}
