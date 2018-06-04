package com.synergy.auction.login.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.admin.service.AdminDto;
import com.synergy.auction.donator.controller.DonatorController;
import com.synergy.auction.donator.service.DonatorDto;
import com.synergy.auction.user.service.UserDto;

@Repository
public class LoginDao {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.login.service.LoginMapper.";
	
	private static final Logger logger = LoggerFactory.getLogger(LoginDao.class);
	
	/*기부단체 id와 비밀번호 검색*/
	public DonatorDto donatorLoginSelectOne(String id) { 
		return sqlSession.selectOne(NS+"donatorLoginSelectOne", id); 
	} 
	
	/*일반회원 id와 비밀번호 검색*/
	public UserDto userLoginSelectOne(String id) { 
		return sqlSession.selectOne(NS+"userLoginSelectOne", id); 
	}
	
	/*관리자 id와 비밀번호 검색*/
	public AdminDto adminLoginSelectOne(String id) { 
		return sqlSession.selectOne(NS+"adminLoginSelectOne", id); 
	}
	/*회원가입시 id 중복확인*/
	public List<Object> idcheck(String id) {
		return sqlSession.selectList(NS+"idcheck", id); 
	}
	/*id 찾기*/
	public List<Object> idSearch(Map<Object, Object> map) {
		return sqlSession.selectList(NS+"idSearch",map); 
	}
	/*pw 찾기*/
	public List<Object> pwSearch(Map<Object, Object> map) {
		return sqlSession.selectList(NS+"pwSearch",map); 
	}
}
