package com.synergy.auction.cash.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	//가장최근의 total캐쉬금액 검색 
	public int cashRecordTotalSelect(String userId) { 
		return cashRecordDao.cashRecordTotalSelect(userId);		
	}	
	
	//캐쉬금액 충전
	public int cashRecordInsert(CashRecordDto cashRecordDto) { 		
		int row = cashRecordDao.cashRecordInsert(cashRecordDto); 			
		return row; 
	}
	
	//가장최근의 캐쉬총금액과 '충전금액을  더하여 '현 총잔액' 구하기
	public int cashRecordTotalUpdate(CashRecordDto cashRecordDto) { 
		int row = cashRecordDao.cashRecordTotalUpdate(cashRecordDto); 		
		return row;
	}
	
	//캐쉬사용내역 검색
	public List<CashRecordDto> cashRecordSelect(String userId) { 
		return cashRecordDao.cashRecordSelect(userId); 		
	}
	
	//캐쉬사용내역 페이징
	public Map<String, Object> totalCashRecord(int currentPage){
		int pagePerRow = 10;	
		//총 row수 구하기
		int total = cashRecordDao.totalCashRecord();
		int lastPage = 0;
		if(total%pagePerRow==0) {
			lastPage = total/pagePerRow;
		} else {
			lastPage = total/pagePerRow+1;
		}
		Map<String, Object> returnMap = new HashMap<String,Object>();
		returnMap.put("lastPage",lastPage);
		return returnMap;
	}
}
