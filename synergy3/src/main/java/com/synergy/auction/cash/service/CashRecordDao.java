package com.synergy.auction.cash.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.donator.service.DonatorDto;

@Repository
public class CashRecordDao {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.cash.service.CashRecordMapper.";

	//회원가입시 캐쉬금액 0으로 초기화
	public int cashRecordTotalInsert(String userId) { 
		int row = sqlSession.insert(NS+"cashRecordTotalInsert", userId); 
		return row; 
	}
	
	//가장최근의 total캐쉬금액 검색
	public int cashRecordTotalSelect(String userId) { 
		return sqlSession.selectOne(NS+"cashRecordTotalSelect", userId); 		
	}	
	
	//캐쉬금액 충전
	public int cashRecordInsert(CashRecordDto cashRecordDto) { 
		int row = sqlSession.insert(NS+"cashRecordInsert", cashRecordDto); 
		return row; 
	}	
	
	//가장최근의 캐쉬총금액과 '충전금액을  더하여 '현 총잔액' 구하기
	public int cashRecordTotalUpdate(CashRecordDto cashRecordDto) { 
		int row = sqlSession.update(NS+"cashRecordTotalUpdate", cashRecordDto); 		
		return row;
	}	
}
