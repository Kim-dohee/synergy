package com.synergy.auction.donator.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.user.service.UserDto;

@Service
public class DonatorService {

	@Autowired
	private DonatorDao donatorDao;
	
	//기부단체 회원가입
	public int donatorInsert(DonatorDto donatorDto) { 
		int row = donatorDao.donatorInsert(donatorDto); 
		return row; 
	} 
	
	//기부단체 회원정보수정을위한 검색
	public DonatorDto donatorSelectOne(String donatorId) {
		return donatorDao.donatorSelectOne(donatorId);
	}
	
	//기부단체 회원정보 수정
	public int donatorUpdate(DonatorDto donator) {
		int row = donatorDao.donatorUpdate(donator);
		return row;
	}
	
	//기부단체명,기부금계획서(제목,날짜) 검색
	public List<DonatorDto> donationPlanSelect() {
		return donatorDao.donationPlanSelect(); 
	}
}
