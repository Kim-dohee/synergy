package com.synergy.auction.cash.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.donator.service.DonatorDto;
import com.synergy.auction.pay.service.PayDto;

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
	
	//캐쉬금액 충전시 계좌(아이디,입금방법,은행명,입금예정인)도 등록
	public int accountInsert(AccountDto accountDto) { 
		int row = sqlSession.insert(NS+"accountInsert", accountDto); 
		return row; 
	}	
	
	//가장최근의 캐쉬총금액과 '충전금액을  더하여 '현 총잔액' 구하기
	public int cashRecordTotalUpdate(CashRecordDto cashRecordDto) { 
		int row = sqlSession.update(NS+"cashRecordTotalUpdate", cashRecordDto); 		
		return row;
	}
	
	//관리자 캐시 입금
	public int cashRecordUpdate(int cashRecordNo) { 
		int row = sqlSession.update(NS+"cashRecordUpdate", cashRecordNo); 		
		return row;
	}
	
	//기부후 캐시 상태 업데이트 
	public int cashRecordInsertPay(int successfulBid) { 
		int row = sqlSession.update(NS+"cashRecordInsertPay", successfulBid); 		
		return row;
	}
	
	//캐쉬사용내역 검색
	public List<CashRecordDto> cashRecordSelect(Map<String, Object> map) { 
		return sqlSession.selectList(NS+"cashRecordSelect", map); 		
	}
	
	//캐쉬사용내역 페이징을 위한 row수 구하기
	public int totalCashRecord(String userId) { 
		return sqlSession.selectOne(NS+"totalCashRecord", userId); 
	}
	public int totalCashRecordAdmin(String userId) { 
		return sqlSession.selectOne(NS+"totalCashRecordAdmin", userId); 
	}
	
	//최종캐쉬금액 검색
	public int totalCashRecordSelectOne(String userId) { 
		return sqlSession.selectOne(NS+"totalCashRecordSelectOne", userId); 
	}
	
	//최종캐쉬금액 검색
	public int cashRecordInsertBuy(Map<Object, Object> map) { 
		sqlSession.update(NS+"cashRecordInsertBuy", map); 
		int cashRecordNo = (int) map.get("cashRecordNo");
		return cashRecordNo;
	}
	
	//경매품과 캐시 검색
	public List<CashRecordDto> cashSelectGoods() { 
		return sqlSession.selectList(NS+"cashSelectGoods"); 
	}
	
	//기부즉시 캐쉬 차감
	public int donationCashSelectOne(int donationUsePrice) { 
		int row = sqlSession.selectOne(NS+"donationCashSelectOne", donationUsePrice); 		
		return row;
	}
	
	//기부즉시 총 보유캐쉬금액 수정
	public int cashRecordTotalUpdateOne(CashRecordDto cashRecordDto) { 
		int row = sqlSession.update(NS+"cashRecordTotalUpdateOne", cashRecordDto); 		
		return row;
	}
}
