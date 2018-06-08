package com.synergy.auction.file.service;

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
}
