package com.synergy.auction.donation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class donationController {

	//전체기부 메인 화면
	@RequestMapping(value = "/donationAll", method = RequestMethod.GET)
	public String donationAllMain() {
		return "donation/donation_all";
	}
}
