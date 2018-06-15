package com.synergy.auction.income.donation.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.donator.service.DonatorDto;

@Repository
public class IncomeDonationDao {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.income.donation.service.IncomeDonationMapper.";
	
	//수입기부금 등록
	public int incomeDonationInsert(IncomeDonationDto incomeDonationDto) { 
		int row = sqlSession.insert(NS+"incomeDonationInsert", incomeDonationDto); 
		return row; 
	}
	
	//총 수입기부금 검색
	public int incomeDonationPriceSelectOne() { 
		return sqlSession.selectOne(NS+"incomeDonationPriceSelectOne"); 
	}
	
	//해당 기부계획서의 총 수입기부금 검색
	public int incomeDonationPlanPriceSelectOne(int donationPlanNo) { 
		return sqlSession.selectOne(NS+"incomeDonationPlanPriceSelectOne", donationPlanNo); 
	}
	
	//기부계획서 등록시 기부금액은 0으로 등록
	public int incomeDonationPriceInsert(int donationPlanNo) { 
		return sqlSession.insert(NS+"incomeDonationPriceInsert", donationPlanNo); 
	}
}
