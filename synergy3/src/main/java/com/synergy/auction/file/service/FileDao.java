package com.synergy.auction.file.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.donator.service.DonatorDto;

@Repository
public class FileDao {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.file.service.FileMapper.";
	
	//기부금 계획서 파일 등록
	public int fileInsert(FileDto fileDto) { 
		int row = sqlSession.insert(NS+"fileInsert", fileDto); 
		return row; 
	}
	
	//경매품 계획서 파일 등록
	public int auctionFileInsert(FileDto fileDto) { 
		int row = sqlSession.insert(NS+"auctionFileInsert", fileDto); 
		return row; 
	}
	
	//파일넘버 검색
	public int fileNoSelect(int donationPlanNo) { 
		return sqlSession.selectOne(NS+"fileNoSelect", donationPlanNo); 
	}

	//경매품 파일넘버 검색
	public int auctionFileNoSelect(int auctionGoodsNo) { 
		return sqlSession.selectOne(NS+"auctionFileNoSelect", auctionGoodsNo); 
	}
	
	//이미지파일넘버 검색
	public int ImageFileNoSelect(int donationPlanNo) { 
		return sqlSession.selectOne(NS+"ImageFileNoSelect", donationPlanNo); 
	}
	
	//기부금 이미지 파일(이름,확장자)검색
	public List<FileDto> ImageFileSelect() { 
		return sqlSession.selectList(NS+"ImageFileSelect"); 
	}
	
	//기부금파일넘버를 매개변수로 받아 파일(이름,확장자)검색
	public FileDto donationPlanFileSelect(int fileNo) { 
		return sqlSession.selectOne(NS+"donationPlanFileSelect", fileNo); 
	}
	
	//파일테이블명(donation_spend_report)로 수정
	public int fileNameUpdate(int donationSpendReportNo) { 
		int row = sqlSession.update(NS+"fileNameUpdate", donationSpendReportNo);
		return row;
	}
	
	//기부금 지출 보고서 파일넘버 검색  
	public int donationSpendReportFileNoSelect(int donationSpendReportNo) { 
		return sqlSession.selectOne(NS+"donationSpendReportFileNoSelect",donationSpendReportNo);
	}
}
