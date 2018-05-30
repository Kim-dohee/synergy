package com.synergy.auction.donator.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.user.service.UserDto;

@Repository
public class DonatorDao {
	
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.donator.service.DonatorMapper.";
		
	/*기부단체 회원가입*/
	public int donatorInsert(DonatorDto donatorDto) { 
		int row = sqlSession.insert(NS+"donatorInsert", donatorDto); 
		return row; 
	} 
		
/*	public DonatorDto donatorSelectOne(DonatorDto donatorDto) { 
		return sqlSession.selectOne(NS+"donatorSelectOne", donatorDto);  
	} */
}
