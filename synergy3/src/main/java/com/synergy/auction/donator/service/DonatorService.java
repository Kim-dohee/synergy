package com.synergy.auction.donator.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.user.service.UserDto;


@Service
public class DonatorService {

	@Autowired
	private DonatorDao donatorDao;
	
	/*기부단체 회원가입*/
	public int donatorInsert(DonatorDto donatorDto) { 
		int row = donatorDao.donatorInsert(donatorDto); 
		return row; 
	} 
	
	//기부단체 회원수정을 위해 정보 가져오기
	public DonatorDto donatorSelectOne(String donatorId) {
		return donatorDao.donatorSelectOne(donatorId);
	}
	
	public int donatorUpdate(DonatorDto donator) {
		int row = donatorDao.donatorUpdate(donator);
		return row;
	} 
}
