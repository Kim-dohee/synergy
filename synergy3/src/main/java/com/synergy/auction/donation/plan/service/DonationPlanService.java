/*[김도희]*/
package com.synergy.auction.donation.plan.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.donation.plan.controller.DonationPlanController;
import com.synergy.auction.donator.service.DonatorDto;

@Service
public class DonationPlanService {

	@Autowired
	private DonationPlanDao donationPlanDao;
	
	private static final Logger logger = LoggerFactory.getLogger(DonationPlanService.class);
	
	//기부금 계획서 등록
	public int donationPlanInsert(DonationPlanDto donationPlanDto) { 
		int row = donationPlanDao.donationPlanInsert(donationPlanDto); 
		return row; 
	}
	
	//기부금 계획서 넘버 검색
	public int donationPlanNoSelectOne(String donatorId) { 
		return donationPlanDao.donationPlanNoSelectOne(donatorId);  
	}
	
	//기부금 계획서 넘버로 검색
	public DonationPlanDto donationPlanSelectOne(int donationPlanNo) { 
		return donationPlanDao.donationPlanSelectOne(donationPlanNo);  
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
	
	//기부단체명,기부금계획서(제목,날짜) 검색
	public List<DonationPlanDto> donationPlanSelect() {
		return donationPlanDao.donationPlanSelect(); 
	}
	
	//기부금계획서 제목,기부금계획서이미지파일(이름,확장자) 검색
	public List<DonationPlanDto> donationSelect() { 
		return donationPlanDao.donationSelect(); 
	}
	
	//해당 계획서 넘버를 매개변수로 받아 기부금계획서 상세(제목,내용,이미지파일명 및 확장자)검색
	public List<DonationPlanDto> selectDonationPlanDetail(int donationPlanNo) { 
		return donationPlanDao.selectDonationPlanDetail(donationPlanNo); 
	}
	
	//기부금계획서(아이디,목적,기부금 사용기간, 모집목표액, 파일, 계획서 등록날짜)상세 검색
	public DonationPlanDto donationPlanDetailSelect(int donationPlanNo) {
		return donationPlanDao.donationPlanDetailSelect(donationPlanNo); 
	}
	
	//보고서 작성시 해당 계획서 넘버 검색
	public List<DonationPlanDto> donationPlanNoSelect(String donatorId) {
		return donationPlanDao.donationPlanNoSelect(donatorId); 
	}
	
	//기부금 계획서 삭제
	public int donationPlanDelete(int donationPlanNo) { 
		int row =  donationPlanDao.donationPlanDelete(donationPlanNo);
		return row;
	}
	
	//(기부단체별 총 기부금을 알기위해)기부단체별 기부금계획서 넘버 검색
	public List<DonationPlanDto> donationPlanNoForDonationNameSelect(String donatorName) {
		return donationPlanDao.donationPlanNoForDonationNameSelect(donatorName); 
	}
	
	//(기부금현황 %를 알기위해)해당 기부금계획서 넘버를 매개변수로 받아 모집목표액 검색
	public int donationPlanGoalPriceSelect(int donationPlanNo) { 
		return donationPlanDao.donationPlanGoalPriceSelect(donationPlanNo); 
	}
	
	//해당기부금계획서의 모집목표액과 기부금사용금액을 매개변수로 받아 기부금현황 % 구하기
	public int donationPercentSelect(int donationPlanGoalPrice, int donationUsePrice) { 
		
		int leftDonationPrice = donationPlanGoalPrice-donationUsePrice;
		logger.debug("DonationPlanService.donationPlanPercentSelect leftDonationPrice>>"+leftDonationPrice);
		int donationPlanPercent = Math.round(donationPlanGoalPrice/leftDonationPrice)*10;
		logger.debug("DonationPlanService.donationPlanPercentSelect donationPlanPercent>>"+donationPlanPercent);
		int donationPercent = 100-donationPlanPercent;
		logger.debug("DonationPlanService.donationPlanPercentSelect donationPercent>>"+donationPercent);
		return donationPercent; 
	}
}
