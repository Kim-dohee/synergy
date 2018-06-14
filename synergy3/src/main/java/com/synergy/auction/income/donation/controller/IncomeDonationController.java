package com.synergy.auction.income.donation.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.cash.controller.CashController;
import com.synergy.auction.income.donation.service.IncomeDonationDto;
import com.synergy.auction.income.donation.service.IncomeDonationService;

@Controller
public class IncomeDonationController {

	@Autowired
	private IncomeDonationService incomeDonationService;
	private static final Logger logger = LoggerFactory.getLogger(IncomeDonationController.class);
	
	//기부금 기부하기
	@RequestMapping(value = "/incomeDonation", method = RequestMethod.POST)
	public String incomeDonation(HttpSession session
								,@RequestParam(value="incomeDonationPrice") int incomeDonationPrice
								,@RequestParam(value="donationPlanNo") int donationPlanNo
								,IncomeDonationDto incomeDonationDto) {
		
		String userId = (String) session.getAttribute("id");
		logger.debug("IncomeDonationController.donationUse userId>>"+userId);
		logger.debug("IncomeDonationController.donationUse incomeDonationPrice>>"+incomeDonationPrice);
		logger.debug("IncomeDonationController.donationUse donationPlanNo>>"+donationPlanNo);
		incomeDonationDto.setUserId(userId);
		incomeDonationDto.setIncomeDonationPrice(incomeDonationPrice);
		incomeDonationDto.setDonationPlanNo(donationPlanNo);;
		incomeDonationService.incomeDonationInsert(incomeDonationDto);
		//기부금 (아이디,기부액,기부금계획서넘버)등록
		return "home";
	}
}
