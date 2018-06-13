/*[김도희]*/
package com.synergy.auction.donation.plan.service;

import java.util.List;

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
	
	//기부금계획서파일넘버 수정
	public int donationPlanFileNoUpdate(DonationPlanDto donationPlanDto) { 
		int row = donationPlanDao.donationPlanFileNoUpdate(donationPlanDto);  
		return row;
	}
	
	//기부금계획서이미지넘버 수정
	public int donationPlanImageNoUpdate(DonationPlanDto donationPlanDto) { 
		int row =  donationPlanDao.donationPlanImageNoUpdate(donationPlanDto);
		return row;
	}
	
	//기부금계획서 검색
	public List<DonationPlanDto> donationPlanSelect() { 
		return donationPlanDao.donationPlanSelect(); 
	}
	
	//기부금계획서 제목,기부금계획서이미지파일(이름,확장자) 검색
	public List<DonationPlanDto> selectDonationPlanDetail() { 
		return donationPlanDao.selectDonationPlanDetail(); 
	}
}
