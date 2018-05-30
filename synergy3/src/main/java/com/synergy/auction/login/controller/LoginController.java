package com.synergy.auction.login.controller;

import javax.servlet.http.HttpSession;

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
	public String login(HttpSession session,String id,String pw) {
		
		logger.debug("LoginController.login >>"+"i:"+id+"pw:"+pw);
		/*id,pw 검색*/
		String level = loginService.login(id,pw);
		/*id,pw일치하면 id,level세션설정*/
		if(level!=null) {
			session.setAttribute("id", id);
			session.setAttribute("level", level);
		}
		logger.debug("LoginController.login sessionId>>"+session.getAttribute("id"));
		logger.debug("LoginController.login sessionLevel>>"+session.getAttribute("level"));
		return "home";
	}
	
	/*일반회원,기부단체 회원가입 화면*/
	@RequestMapping(value = "/loginMain", method = RequestMethod.GET)
	public String donatorInsert() {
		return "login/login_main";
	}
}
