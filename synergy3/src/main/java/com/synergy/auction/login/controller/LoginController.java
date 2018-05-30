package com.synergy.auction.login.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.synergy.auction.login.service.LoginDao;
import com.synergy.auction.login.service.LoginService;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired 
	private LoginService loginService;
	/*로그인 처리*/
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String id,String pw) {
		
		logger.info("LoginController.login >>"+"id:"+id+"pw:"+pw);
		/*id,pw 검색*/
		loginService.login(id,pw);
		return "home";
	}
	
	/*일반회원,기부단체 회원가입 화면*/
	@RequestMapping(value = "/loginMain", method = RequestMethod.GET)
	public String donatorInsert() {
		return "login/login_main";
	}
}
