package com.synergy.auction.login.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.donator.service.DonatorDao;
import com.synergy.auction.donator.service.DonatorDto;

@Service
public class LoginService {

	@Autowired
	private LoginDao loginDao;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginService.class);
	
	/*아이디,비밀번호 확인*/
	public void login(String id) { 
		
		DonatorDto donatorLogin;
		
		/*기부단체 id,pw 검색*/
		donatorLogin = loginDao.donatorLoginSelectOne(id);	
		logger.info("LoginService.login id >>"+donatorLogin.getDonatorId());
		logger.info("LoginService.login id >>"+donatorLogin.getDonatorPw());
		/*일반회원 id,pw 검색*/
		loginDao.userLoginSelectOne(id);
		/*관리자 id,pw 검색*/
		loginDao.adminLoginSelectOne(id);
		 
	} 
}
