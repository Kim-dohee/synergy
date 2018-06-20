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
	
	//기부금 지출보고서(아이디,제목,내용,기부금 사용날짜,기부 내역) 등록
	public int donationSpendReportInsert(DonationSpendReportDto donationSpendReportDto) { 
		int row = donationSpendReportDao.donationSpendReportInsert(donationSpendReportDto); 
		return row;
	}
	
	//기부단체아이디를 매개변수로 받아 기부 지출 보고서 넘버 검색
	public int donationSpendReportNoSelectOne(String donatorId) { 
		return donationSpendReportDao.donationSpendReportNoSelectOne(donatorId);
	}
	
	//기부금 지출보고서 파일넘버,계획서번호 수정
	public int donationSpendReportUpdate(DonationSpendReportDto donationSpendReportDto) { 
		int row = donationSpendReportDao.donationSpendReportUpdate(donationSpendReportDto); 
		return row;
	}
	
	//수입기부금 넘버 및 (아이디,계획서넘버)등록
	public int incomeDonationNoInsert(DonationSpendReportDto donationSpendReportDto) { 
		int row = donationSpendReportDao.incomeDonationNoInsert(donationSpendReportDto); 
		return row;
	}
	
	//기부금 지출보고서(계획서 넘버,보고서 파일넘버,제목,내용,기부액 사용 날짜,기부내역,보고서 등록날짜) 상세 검색
	public DonationSpendReportDto donationSpendReportDetailSelect(int donationSpendReportNo) { 
		return donationSpendReportDao.donationSpendReportDetailSelect(donationSpendReportNo); 
	}
	
	//기부금 지출보고서 삭제
	public int donationSpendReportDelete(int donationPlanNo) { 
		int row = donationSpendReportDao.donationSpendReportDelete(donationPlanNo); 
		return row;
	}
}
