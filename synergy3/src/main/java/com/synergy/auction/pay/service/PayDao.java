package com.synergy.auction.pay.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;

@Repository
public class PayDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.pay.service.PayMapper.";
	
	public int payInsert(PayDto payDto) { 
		return sqlSession.insert(NS+"payInsert", payDto); 
	} 
	
	public List<PayDto> paySelect(String userId) { 
		return sqlSession.selectList(NS+"paySelect", userId); 
	} 
	
	public int payUpdateDeliver(int payNo) { 
		return sqlSession.update(NS+"payUpdateDeliver", payNo); 
	} 
	
	public int payUpdateConfilrm(int payNo) { 
		return sqlSession.update(NS+"payUpdateConfilrm", payNo); 
	} 
	
	public int payUpdateSuccess(int payNo) { 
		return sqlSession.update(NS+"payUpdateSuccess", payNo); 
	} 

}
