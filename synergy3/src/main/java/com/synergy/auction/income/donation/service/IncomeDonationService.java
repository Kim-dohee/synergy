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
}
