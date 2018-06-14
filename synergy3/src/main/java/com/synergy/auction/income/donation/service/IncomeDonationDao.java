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
}
