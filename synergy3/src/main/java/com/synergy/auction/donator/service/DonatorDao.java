/*[김도희]*/
package com.synergy.auction.donator.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.user.service.UserDto;

@Repository
public class DonatorDao {
	
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.donator.service.DonatorMapper.";
		
	//기부단체 회원가입
	public int donatorInsert(DonatorDto donatorDto) { 
		int row = sqlSession.insert(NS+"donatorInsert", donatorDto); 
		return row; 
	} 
	
	//기부단체 회원정보수정을위한 검색
	public DonatorDto donatorSelectOne(String donatorId) { 
		return sqlSession.selectOne(NS+"donatorSelectOne", donatorId);  
	}

	//기부단체 회원정보 수정
	public int donatorUpdate(DonatorDto donator) {
		int row = sqlSession.update(NS +"donatorUpdate", donator); 
		return row;
	} 
	
	//기부단체명,기부금계획서(제목,날짜) 검색
	public List<DonatorDto> donationPlanSelect() {
		return sqlSession.selectList(NS+"donationPlanSelect"); 
	}
}
