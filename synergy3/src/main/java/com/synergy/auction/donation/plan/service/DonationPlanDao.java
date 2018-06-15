/*[김도희]*/
package com.synergy.auction.donation.plan.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DonationPlanDao {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.donation.plan.service.DonationPlanMapper.";
	
	//기부금 계획서 등록
	public int donationPlanInsert(DonationPlanDto donationPlanDto) { 
		int row = sqlSession.insert(NS+"donationPlanInsert", donationPlanDto); 
		return row; 
	}
	
	//기부금 계획서 넘버 검색
	public int donationPlanNoSelectOne(String donatorId) { 
		return sqlSession.selectOne(NS+"donationPlanNoSelectOne", donatorId); 
	}
	
	//기부금계획서파일넘버 수정
	public int donationPlanFileNoUpdate(DonationPlanDto donationPlanDto) { 
		int row =  sqlSession.update(NS+"donationPlanFileNoUpdate", donationPlanDto); 
		return row;
	}
	
	//기부금계획서이미지넘버 수정
	public int donationPlanImageNoUpdate(DonationPlanDto donationPlanDto) { 
		int row =  sqlSession.update(NS+"donationPlanImageNoUpdate", donationPlanDto); 
		return row;
	}
	
	//기부금계획서 검색
	public List<DonationPlanDto> donationPlanSelect() { 
		return sqlSession.selectList(NS+"donationPlanSelect"); 
	}
	
	//기부금계획서 제목,기부금계획서이미지파일(이름,확장자) 검색
	public List<DonationPlanDto> donationSelect() { 
		return sqlSession.selectList(NS+"donationSelect"); 
	}
	
	//해당 계획서 넘버를 매개변수로 받아 기부금계획서 상세(제목,내용,이미지파일명 및 확장자)검색
	public List<DonationPlanDto> selectDonationPlanDetail(int donationPlanNo) { 
		return sqlSession.selectList(NS+"selectDonationPlanDetail", donationPlanNo); 
	}
}
