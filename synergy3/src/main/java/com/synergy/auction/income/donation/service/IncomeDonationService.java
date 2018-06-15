package com.synergy.auction.income.donation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class IncomeDonationService {

	@Autowired
	private IncomeDonationDao incomeDonationDao;
	
	//수입기부금 등록
	public int incomeDonationInsert(IncomeDonationDto incomeDonationDto) { 
		int row = incomeDonationDao.incomeDonationInsert(incomeDonationDto); 
		return row; 
	}
	
	//총 수입기부금 검색
	public int incomeDonationPriceSelectOne() { 
		return incomeDonationDao.incomeDonationPriceSelectOne(); 
	}
	
	//해당 기부계획서의 총 수입기부금 검색
	public int incomeDonationPlanPriceSelectOne(int donationPlanNo) { 
		return incomeDonationDao.incomeDonationPlanPriceSelectOne(donationPlanNo); 
	}
	
	//기부계획서 등록시 기부금액은 0으로 등록
	public int incomeDonationPriceInsert(int donationPlanNo) { 
		return incomeDonationDao.incomeDonationPriceInsert(donationPlanNo); 
	}
}
