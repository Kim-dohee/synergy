/*[김도희]*/
package com.synergy.auction.donation.spend.report.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.donation.plan.service.DonationPlanDto;

@Repository
public class DonationSpendReportDao {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.donation.spend.report.service.DonationSpendReportMapper.";

	//기부금 지출보고서(기부단체,제목,날짜) 검색
	public List<DonationSpendReportDto> donationSpendReportSelect() { 
		return sqlSession.selectList(NS+"donationSpendReportSelect"); 
	}
	
	//기부금 지출보고서(아이디,제목,내용,기부금 사용날짜,기부 내역) 등록
	public int donationSpendReportInsert(DonationSpendReportDto donationSpendReportDto) { 
		int row = sqlSession.insert(NS+"donationSpendReportInsert", donationSpendReportDto);
		return row;
	}
	
	//기부단체아이디를 매개변수로 받아 기부 지출 보고서 넘버 검색
	public int donationSpendReportNoSelectOne(String donatorId) { 
		return sqlSession.selectOne(NS+"donationSpendReportNoSelectOne", donatorId);
	}
	
	//기부금 지출보고서 파일넘버,계획서번호 수정
	public int donationSpendReportUpdate(DonationSpendReportDto donationSpendReportDto) { 
		int row = sqlSession.update(NS+"donationSpendReportUpdate", donationSpendReportDto); 
		return row;
	}
	
	//수입기부금 넘버 및 (아이디,계획서넘버)등록
	public int incomeDonationNoInsert(DonationSpendReportDto donationSpendReportDto) { 
		int row = sqlSession.insert(NS+"incomeDonationNoInsert", donationSpendReportDto); 
		return row;
	}
	
	//기부금 지출보고서(계획서 넘버,보고서 파일넘버,제목,내용,기부액 사용 날짜,기부내역,보고서 등록날짜) 상세 검색
	public DonationSpendReportDto donationSpendReportDetailSelect(int donationSpendReportNo) { 
		return sqlSession.selectOne(NS+"donationSpendReportDetailSelect",donationSpendReportNo); 
	}
	
	//기부금 지출보고서 삭제
	public int donationSpendReportDelete(int donationPlanNo) { 
		int row = sqlSession.delete(NS+"donationSpendReportDelete", donationPlanNo); 
		return row;
	}
}
