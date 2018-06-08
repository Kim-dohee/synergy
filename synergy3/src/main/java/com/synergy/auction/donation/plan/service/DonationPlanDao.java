/*[김도희]*/
package com.synergy.auction.donation.plan.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DonationPlanDao {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.donation.plan.service.DonationPlanMapper.";
	
	//기부금 계획서 등록
	public int donationPlanInsert(DonationPlanDto donationPlanDto) { 
		int row = sqlSession.insert(NS+"donationPlanInsert", donationPlanDto); 
		return row; 
	}
	
	//기부금 계획서 넘버 검색
	public int donationPlanNoSelectOne(String donatorId) { 
		return sqlSession.selectOne(NS+"donationPlanNoSelectOne", donatorId); 
	}
		
}
