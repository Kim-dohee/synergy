package com.synergy.auction.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginMainController {
	
	/*일반회원,기부단체 회원가입 화면*/
	@RequestMapping(value = "/loginMain", method = RequestMethod.GET)
	public String donatorInsert() {
		return "login/login_main";
	}
}
