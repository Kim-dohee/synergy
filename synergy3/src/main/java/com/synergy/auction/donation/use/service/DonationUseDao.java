/*[김도희]*/
package com.synergy.auction.donation.use.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DonationUseDao {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.donation.use.service.DonationUseMapper.";
	
	//해당연도를 매개변수로 받아 아동의 총 기부금액 검색
	public int donationUsePriceChildTotalSelect(int donationUseDate) { 
		return sqlSession.selectOne(NS+"donationUsePriceChildTotalSelect", donationUseDate); 
	}
	
	//해당연도를 매개변수로 받아 장애인의 총 기부금액 검색
	public int donationUsePriceDisabledTotalSelect(int donationUseDate) { 
		return sqlSession.selectOne(NS+"donationUsePriceDisabledTotalSelect", donationUseDate); 
	}

	//해당연도를 매개변수로 받아 노인의 총 기부금액 검색
	public int donationUsePriceOldTotalSelect(int donationUseDate) { 
		return sqlSession.selectOne(NS+"donationUsePriceOldTotalSelect", donationUseDate); 
	}
}
