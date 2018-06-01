package com.synergy.auction.cash.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.donator.service.DonatorDto;

@Service
public class CashRecordService {

	@Autowired
	private CashRecordDao cashRecordDao;
	
	//회원가입시 캐쉬금액 0으로 초기화
	public int cashRecordTotalInsert(String userId) { 
		int row = cashRecordDao.cashRecordTotalInsert(userId); 
		return row; 
	}
	
	//캐쉬금액 충전
	public int cashRecordInsert(CashRecordDto cashRecordDto) { 
		int row = cashRecordDao.cashRecordInsert(cashRecordDto); 
		return row; 
	}
}
