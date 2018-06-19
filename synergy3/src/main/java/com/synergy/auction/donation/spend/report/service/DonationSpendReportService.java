package com.synergy.auction.donation.spend.report.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DonationSpendReportService {

	@Autowired
	private DonationSpendReportDao donationSpendReportDao;
	
	//기부금 지출보고서(기부단체,제목,날짜) 검색
	public List<DonationSpendReportDto> donationSpendReportSelect() { 
		return donationSpendReportDao.donationSpendReportSelect(); 
	}
}
