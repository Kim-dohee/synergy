package com.synergy.auction.income.donation.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.cash.controller.CashController;
import com.synergy.auction.income.donation.service.IncomeDonationDto;

@Controller
public class IncomeDonationController {

	private static final Logger logger = LoggerFactory.getLogger(IncomeDonationController.class);
	
	//기부금 기부하기
	@RequestMapping(value = "/donationUse", method = RequestMethod.POST)
	public String donationUse(HttpSession session
								,@RequestParam(value="donationUsePrice") int donationUsePrice
								,@RequestParam(value="donationPlanNo") int donationPlanNo
								,IncomeDonationDto incomeDonationDto) {
		
		String userId = (String) session.getAttribute("id");
		logger.debug("IncomeDonationController.donationUse userId>>"+userId);
		logger.debug("IncomeDonationController.donationUse donationUsePrice>>"+donationUsePrice);
		logger.debug("IncomeDonationController.donationUse donationPlanNo>>"+donationPlanNo);
		//기부금 (아이디,기부액,기부금계획서넘버)등록
		incomeDonationDto.setUserId(userId);
		
		return "home";
	}
}
