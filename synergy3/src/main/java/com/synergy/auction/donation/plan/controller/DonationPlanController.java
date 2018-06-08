/*[김도희]*/
package com.synergy.auction.donation.plan.controller;

import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.synergy.auction.donator.controller.DonatorController;
import com.synergy.auction.file.service.FileService;

@Controller
public class DonationPlanController {

	@Autowired
	private FileService fileService;
	
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
									,@RequestParam(value="fileName") MultipartFile fileName
									) {	
		logger.debug("DonationPlanController.donationPlanInsert donationPalnTitle>>"+donationPalnTitle);
		logger.debug("DonationPlanController.donationPlanInsert donationPalnContent>>"+donationPalnContent);
		logger.debug("DonationPlanController.donationPlanInsert donationPalnPurpose>>"+donationPalnPurpose);
		logger.debug("DonationPlanController.donationPlanInsert donationPalnGoalPrice>>"+donationPalnGoalPrice);
		logger.debug("DonationPlanController.donationPlanInsert fileName>>"+fileName);
		//기부금 계획서 파일 등록
		fileService.fileInsert(fileName);
		return "home";
	}
}
