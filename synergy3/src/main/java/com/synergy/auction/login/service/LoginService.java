package com.synergy.auction.login.service;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.admin.service.AdminDto;
import com.synergy.auction.donator.service.DonatorDao;
import com.synergy.auction.donator.service.DonatorDto;
import com.synergy.auction.user.service.UserDto;

@Service
public class LoginService {

	@Autowired
	private LoginDao loginDao;
	
	private static final Logger logger = LoggerFactory.getLogger(LoginService.class);
	
	/*아이디,비밀번호 확인*/
	public String login(String id,String pw) { 
		
		DonatorDto donatorLogin;
		UserDto userLogin;
		AdminDto adminLogin;
		
		/*기부단체 id,pw 검색*/
		donatorLogin = loginDao.donatorLoginSelectOne(id);	
		logger.debug("LoginService.login donatorid >>"+donatorLogin.getDonatorId());
		logger.debug("LoginService.login donatorpw >>"+donatorLogin.getDonatorPw());
		/*일반회원 id,pw 검색*/
		userLogin = loginDao.userLoginSelectOne(id);
		logger.debug("LoginService.login userid >>"+userLogin.getUserId());
		logger.debug("LoginService.login userpw >>"+userLogin.getUserPw());
		/*관리자 id,pw 검색*/
		adminLogin = loginDao.adminLoginSelectOne(id);
		logger.debug("LoginService.adminlogin id >>"+adminLogin.getAdminId());
		logger.debug("LoginService.adminlogin pw >>"+adminLogin.getAdminPw());
		
		/*기부단체 id,pw일치 확인 후 설정*/
		if(donatorLogin.getDonatorId().equals(id)) {
			if(donatorLogin.getDonatorPw().equals(pw)) {
				return "login";
			}
		}
		
		/*일반회원 id,pw일치 확인 후 세션설정*/
		if(userLogin.getUserId().equals(id)) {
			if(userLogin.getUserPw().equals(pw)) {
				return "login";
			}
		}
		
		/*관리자 id,pw일치 확인 후 세션설정*/
		if(adminLogin.getAdminId().equals(id)) {
			if(adminLogin.getAdminPw().equals(pw)) {
				return "login";
			}
		}
		return "login";
	} 
}
