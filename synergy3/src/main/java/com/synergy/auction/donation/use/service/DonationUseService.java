/*[김도희]*/
package com.synergy.auction.donation.use.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.donation.plan.service.DonationPlanDao;

@Service
public class DonationUseService {

	@Autowired
	private DonationUseDao donationUseDao;
	
	//해당연도를 매개변수로 받아 아동의 총 기부금액 검색
	public int donationUsePriceChildTotalSelect(int donationUseDate) { 
		return donationUseDao.donationUsePriceChildTotalSelect(donationUseDate); 
	}
	
	//해당연도를 매개변수로 받아 장애인의 총 기부금액 검색
	public int donationUsePriceDisabledTotalSelect(int donationUseDate) { 
		return donationUseDao.donationUsePriceDisabledTotalSelect(donationUseDate); 
	}
	
	//해당연도를 매개변수로 받아 노인의 총 기부금액 검색
	public int donationUsePriceOldTotalSelect(int donationUseDate) { 
		return donationUseDao.donationUsePriceOldTotalSelect(donationUseDate); 
	}
}
