package com.synergy.auction.join.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class JoinController {

	//일반회원,기부단체 회원가입 화면
		@RequestMapping(value = "/loginMain", method = RequestMethod.GET)
		public String donatorInsert() {
			return "join/join_main";
		}

}
