package com.synergy.auction.login.service;

import java.util.List;

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
		String level = null;
		/*기부단체 id,pw 검색*/
		donatorLogin = loginDao.donatorLoginSelectOne(id);	
		/*logger.debug("LoginService.login donatorid >>"+donatorLogin.getDonatorId());
		logger.debug("LoginService.login donatorpw >>"+donatorLogin.getDonatorPw());*/
		/*일반회원 id,pw 검색*/
		userLogin = loginDao.userLoginSelectOne(id);
/*		logger.debug("LoginService.login userid >>"+userLogin.getUserId());
		logger.debug("LoginService.login userpw >>"+userLogin.getUserPw());*/
		/*관리자 id,pw 검색*/
		adminLogin = loginDao.adminLoginSelectOne(id);
		/*logger.debug("LoginService.adminlogin id >>"+adminLogin.getAdminId());
		logger.debug("LoginService.adminlogin pw >>"+adminLogin.getAdminPw());*/
		logger.debug("LoginService.adminlogin pw >>"+adminLogin);
		
		/*기부단체 id,pw일치 확인*/
		if(donatorLogin != null) {
			if(donatorLogin.getDonatorId().equals(id)) {
				if(donatorLogin.getDonatorPw().equals(pw)) {
					level = "기부단체";
				}
			}
		}
		/*일반회원 id,pw일치 확인*/
		if(userLogin != null) {
			if(userLogin.getUserId().equals(id)) {
				if(userLogin.getUserPw().equals(pw)) {
					level = "일반회원";
				}
			}
		}
		/*관리자 id,pw일치 확인 후 세션설정*/
		if(adminLogin != null) {
			if(adminLogin.getAdminId().equals(id)) {
				if(adminLogin.getAdminPw().equals(pw)) {
					level = "관리자";
				}
			}
		}
		return level;
	}

	public int idcheck(String id) {
		int row = loginDao.idcheck(id);
		return row;
	} 
}
