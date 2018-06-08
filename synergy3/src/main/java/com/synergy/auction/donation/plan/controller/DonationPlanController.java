/*[김도희]*/
package com.synergy.auction.donation.plan.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.synergy.auction.donation.plan.service.DonationPlanDto;
import com.synergy.auction.donation.plan.service.DonationPlanService;
import com.synergy.auction.donator.controller.DonatorController;
import com.synergy.auction.file.service.FileService;

@Controller
public class DonationPlanController {

	@Autowired
	private FileService fileService;
	private DonationPlanService donationPlanService;
	
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
	public String donationPlanInsert(HttpSession session
									,@RequestParam(value="donationPlanTitle") String donationPlanTitle
									,@RequestParam(value="donationPlanContent") String donationPlanContent
									,@RequestParam(value="donationPlanPurpose") String donationPlanPurpose
									,@RequestParam(value="donationPlanGoalPrice") int donationPlanGoalPrice
									,@RequestParam(value="donationPlanUseTerm") String donationPlanUseTerm
									,@RequestParam(value="fileName") MultipartFile fileName
									,DonationPlanDto donationPlanDto) {	
		String donatorId = (String) session.getAttribute("id");
		logger.debug("DonationPlanController.donationPlanInsert donationPlanTitle>>"+donationPlanTitle);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanContent>>"+donationPlanContent);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanPurpose>>"+donationPlanPurpose);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanGoalPrice>>"+donationPlanGoalPrice);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanUseTerm>>"+donationPlanUseTerm);
		logger.debug("DonationPlanController.donationPlanInsert donatorId>>"+donatorId);
		logger.debug("DonationPlanController.donationPlanInsert fileName>>"+fileName);
		
		donationPlanDto.setDonatorId(donatorId);
		donationPlanDto.setDonationPlanTitle(donationPlanTitle);
		donationPlanDto.setDonationPlanContent(donationPlanContent);
		donationPlanDto.setDonationPlanPurpose(donationPlanPurpose);
		donationPlanDto.setDonationPlanGoalPrice(donationPlanGoalPrice);
		donationPlanDto.setDonationPlanUseTerm(donationPlanUseTerm);
		logger.debug("DonationPlanController.donationPlanInsert toString>>"+donationPlanDto.toString());
		//기부금 계획서 등록
		donationPlanService.donationPlanInsert(donationPlanDto);
		//기부금 계획서 파일 등록
		fileService.fileInsert(fileName);
		//기부금 계획서 파일 no 검색		
		return "home";
	}
}
