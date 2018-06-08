package com.synergy.auction.cash.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.synergy.auction.donator.service.DonatorDto;

@Service
@Transactional
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
	
	//캐쉬금액 충전시 계좌(아이디,입금방법,은행명,입금예정인)도 등록
	public int accountInsert(AccountDto accountDto) { 		
		int row = cashRecordDao.accountInsert(accountDto); 			
		return row; 
	}
	
	//가장최근의 캐쉬총금액과 '충전금액을  더하여 '현 총잔액' 구하기
	public int cashRecordTotalUpdate(CashRecordDto cashRecordDto) { 
		int row = cashRecordDao.cashRecordTotalUpdate(cashRecordDto); 		
		return row;
	}
	
	//캐쉬사용내역 검색(페이징)
	public Map<String, Object> totalCashRecord(String userId,int currentPage){
		Map<String, Object> cashMap = new HashMap<String,Object>();
		int beginRow = (currentPage-1)*10;
		cashMap.put("beginRow", beginRow);	
		cashMap.put("userId", userId);
		List<CashRecordDto> list = cashRecordDao.cashRecordSelect(cashMap);
		//총 row수 구하기
		int total = cashRecordDao.totalCashRecord();
		int lastPage = 0;
		if(total%10==0) {
			lastPage = total/10;
		} else {
			lastPage = total/10+1;
		}
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("list", list);
		map.put("lastPage",lastPage);
		return map;
	}
}
