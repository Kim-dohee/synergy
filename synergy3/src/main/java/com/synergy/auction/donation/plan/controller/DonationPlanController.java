/*[김도희]*/
package com.synergy.auction.donation.plan.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.donator.controller.DonatorController;

@Controller
public class DonationPlanController {

	private static final Logger logger = LoggerFactory.getLogger(DonationPlanController.class);
	
	//기부계획서 메인 화면
	@RequestMapping(value = "/donationPlanMain", method = RequestMethod.GET)
	public String donationPlanMain() {
		return "donation/donation_plan_main";
	}
	
	//기부계획서등록 동의 화면
	@RequestMapping(value = "/donationPlanAgreement", method = RequestMethod.GET)
	public String donationPlanAgreement() {
		return "donation/donation_plan_agreement";
	}
	
	//기부계획서 등록화면
	@RequestMapping(value = "/donationPlanInsertView", method = RequestMethod.POST)
	public String donationPlanInsertView() {
		return "donation/donation_plan_insert";
	}
	
	//기부계획서 등록처리
	@RequestMapping(value = "/donationPlanInsert", method = RequestMethod.POST)
	public String donationPlanInsert(@RequestParam(value="donationPalnTitle") String donationPalnTitle
									,@RequestParam(value="donationPalnContent") String donationPalnContent
									,@RequestParam(value="donationPalnPurpose") String donationPalnPurpose
									,@RequestParam(value="donationPalnGoalPrice") int donationPalnGoalPrice
									,@RequestParam(value="donationPalnUseTerm") String donationPalnUseTerm
									,HttpServletRequest request) {
		logger.debug("DonationPlanController.donationPlanInsert donationPalnTitle>>"+donationPalnTitle);
		logger.debug("DonationPlanController.donationPlanInsert donationPalnContent>>"+donationPalnContent);
		logger.debug("DonationPlanController.donationPlanInsert donationPalnPurpose>>"+donationPalnPurpose);
		logger.debug("DonationPlanController.donationPlanInsert donationPalnGoalPrice>>"+donationPalnGoalPrice);
		logger.debug("DonationPlanController.donationPlanInsert donationPalnUseTerm>>"+donationPalnUseTerm);

		return "home";
	}
}
