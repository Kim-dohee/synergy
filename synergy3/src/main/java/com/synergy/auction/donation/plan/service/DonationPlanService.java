/*[김도희]*/
package com.synergy.auction.donation.plan.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DonationPlanService {

	@Autowired
	private DonationPlanDao donationPlanDao;
	
	//기부금 계획서 등록
	public int donationPlanInsert(DonationPlanDto donationPlanDto) { 
		int row = donationPlanDao.donationPlanInsert(donationPlanDto); 
		return row; 
	}
	
	//기부금 계획서 넘버 검색
	public int donationPlanNoSelectOne(String donatorId) { 
		return donationPlanDao.donationPlanNoSelectOne(donatorId);  
	}
}
