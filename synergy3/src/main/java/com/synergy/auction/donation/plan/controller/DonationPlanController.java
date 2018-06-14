/*[김도희]*/
package com.synergy.auction.donation.plan.controller;

import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.synergy.auction.cash.service.CashRecordService;
import com.synergy.auction.donation.plan.service.DonationPlanDto;
import com.synergy.auction.donation.plan.service.DonationPlanService;
import com.synergy.auction.donator.controller.DonatorController;
import com.synergy.auction.file.service.FileDto;
import com.synergy.auction.file.service.FileService;

@Controller
@Transactional
public class DonationPlanController {

	@Autowired
	private FileService fileService;
	@Autowired
	private DonationPlanService donationPlanService;
	@Autowired
	private CashRecordService cashRecordService;
	
	private static final Logger logger = LoggerFactory.getLogger(DonationPlanController.class);
	
	//기부계획서 메인 화면
	@RequestMapping(value = "/donationPlanMain", method = RequestMethod.GET)
	public String donationPlanMain() {
		return "donationPlan/donation_plan_main";
	}
	
	//기부계획서등록 동의 화면
	@RequestMapping(value = "/donationPlanAgreement", method = RequestMethod.GET)
	public String donationPlanAgreement() {
		return "donationPlan/donation_plan_agreement";
	}
	
	//기부계획서 등록화면
	@RequestMapping(value = "/donationPlanInsertView", method = RequestMethod.POST)
	public String donationPlanInsertView() {
		return "donationPlan/donation_plan_insert";
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
									,@RequestParam(value="fileImage") MultipartFile fileImage
									,DonationPlanDto donationPlanDto
									,Model model) {	
		String donatorId = (String) session.getAttribute("id");
		logger.debug("DonationPlanController.donationPlanInsert donationPlanTitle>>"+donationPlanTitle);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanContent>>"+donationPlanContent);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanPurpose>>"+donationPlanPurpose);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanGoalPrice>>"+donationPlanGoalPrice);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanUseTerm>>"+donationPlanUseTerm);
		logger.debug("DonationPlanController.donationPlanInsert donatorId>>"+donatorId);
		logger.debug("DonationPlanController.donationPlanInsert fileName>>"+fileName);
		logger.debug("DonationPlanController.donationPlanInsert fileImage>>"+fileImage);
		
		donationPlanDto.setDonatorId(donatorId);
		donationPlanDto.setDonationPlanTitle(donationPlanTitle);
		donationPlanDto.setDonationPlanContent(donationPlanContent);
		donationPlanDto.setDonationPlanPurpose(donationPlanPurpose);
		donationPlanDto.setDonationPlanGoalPrice(donationPlanGoalPrice);
		donationPlanDto.setDonationPlanUseTerm(donationPlanUseTerm);
		logger.debug("DonationPlanController.donationPlanInsert toString>>"+donationPlanDto.toString());
		//기부금 계획서 등록
		donationPlanService.donationPlanInsert(donationPlanDto);
		//기부금 계획서 넘버 검색
		int donationPlanNo = donationPlanService.donationPlanNoSelectOne(donatorId);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanNo>>"+donationPlanNo);
		//파일이 존재할 경우,기부금 계획서 파일 등록
		if(fileName != null) {
			fileService.fileInsert(fileName,donationPlanNo);
			
		}
		//파일넘버 검색 후 기부금계획서파일넘버에 등록
		int donationPlanFileNo = fileService.fileNoSelect(donationPlanNo);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanFileNo>>"+donationPlanFileNo);
		donationPlanDto.setDonationPlanNo(donationPlanNo);
		donationPlanDto.setDonationPlanFileNo(donationPlanFileNo);
		donationPlanService.donationPlanFileNoUpdate(donationPlanDto);
		//파일이 존재할 경우,기부금 이미지 등록
		if(fileName != null) {
			fileService.fileInsert(fileImage,donationPlanNo);	
		}
		//이미지넘버 검색 후 기부금계획서이미지넘버에 등록
		int donationPlanImageNo = fileService.ImageFileNoSelect(donationPlanNo);
		donationPlanDto.setDonationPlanImageNo(donationPlanImageNo);
		logger.debug("DonationPlanController.donationPlanInsert donationPlanImageNo>>"+donationPlanImageNo);
		donationPlanService.donationPlanImageNoUpdate(donationPlanDto);
		return "donationPlan/donation_plan_commit";
	}
	
	//기부하기 검색
	@RequestMapping(value = "/donationAll", method = RequestMethod.GET)
	public String donationAllMain(Model model) {

		//기부금계획서 제목,기부금계획서이미지파일(이름,확장자) 검색
		List<DonationPlanDto> list = donationPlanService.selectDonationPlan();
		model.addAttribute("list", list);
		return "donation/donation_select";
	}
	
	//기부하기 상세 화면
	@RequestMapping(value = "/donationSelectDetail", method = RequestMethod.GET)
	public String donationSelectDetail(HttpSession session
										,Model model
										,@RequestParam(value="donationPlanNo") int donationPlanNo) {
		
		logger.debug("DonationPlanController.donationSelectDetail donationPlanNo>>"+donationPlanNo);
		//해당 계획서 넘버를 매개변수로 받아 기부금계획서 상세(제목,내용,이미지파일명 및 확장자)검색
		List<DonationPlanDto> list = donationPlanService.selectDonationPlanDetail(donationPlanNo);
		String userId = (String) session.getAttribute("id");
		//최종캐쉬금액 검색
		if(userId != null) {
			int totalCash = cashRecordService.totalCashRecordSelectOne(userId);
			model.addAttribute("totalCash", totalCash);
		}
		model.addAttribute("list", list);
		return "donation/donation_select_detail";
	}

}
