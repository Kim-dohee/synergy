/*[김도희]*/
package com.synergy.auction.donation.plan.controller;

import java.util.List;

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
import com.synergy.auction.file.service.FileDto;
import com.synergy.auction.file.service.FileService;
import com.synergy.auction.income.donation.service.IncomeDonationService;

@Controller
@Transactional
public class DonationPlanController {

	@Autowired
	private FileService fileService;
	@Autowired
	private DonationPlanService donationPlanService;
	@Autowired
	private CashRecordService cashRecordService;
	@Autowired
	private IncomeDonationService incomeDonationService;
	
	private static final Logger logger = LoggerFactory.getLogger(DonationPlanController.class);
	
	//기부금 계획서 검색
	@RequestMapping(value = "/donationPlanMain", method = RequestMethod.GET)
	public String donationPlanMain(Model model) {
		
		//(기부단체별 총 기부금을 알기위해)기부단체별 기부금계획서 넘버 검색
		//------드림풀 총 수익금
		List<DonationPlanDto> donationPlanNo1 = donationPlanService.donationPlanNoForDonationNameSelect("드림풀");
		logger.debug("DonationPlanController.donationPlanMain donationPlanNo1>>"+donationPlanNo1.toString());
		int incomeDonationPriceTotal1 = 0;
		//(기부단체별 총 기부금을 알기위해)기부단체 넘버를 매개변수로 받아 총 수익금 검색
		for(DonationPlanDto list : donationPlanNo1) {
			logger.debug("DonationPlanController.donationPlanMain planNo>>"+list.getDonationPlanNo());
			int incomeDonationPrice = incomeDonationService.incomeDonationPriceTotalSelect(list.getDonationPlanNo());
			incomeDonationPriceTotal1 += incomeDonationPrice;
		}
		model.addAttribute("incomeDonationPriceTotal1", incomeDonationPriceTotal1);
		logger.debug("DonationPlanController.donationPlanMain incomeDonationPriceTotal1>>"+incomeDonationPriceTotal1);
		//------기아대책 총 수익금
		List<DonationPlanDto> donationPlanNo2 = donationPlanService.donationPlanNoForDonationNameSelect("기아대책");
		int incomeDonationPriceTotal2 = 0;
		for(DonationPlanDto list : donationPlanNo2) {
			logger.debug("DonationPlanController.donationPlanMain planNo>>"+list.getDonationPlanNo());
			int incomeDonationPrice = incomeDonationService.incomeDonationPriceTotalSelect(list.getDonationPlanNo());
			incomeDonationPriceTotal2 += incomeDonationPrice;
		}
		model.addAttribute("incomeDonationPriceTotal2", incomeDonationPriceTotal2);
		//------사랑밭 총 수익금
		List<DonationPlanDto> donationPlanNo3 = donationPlanService.donationPlanNoForDonationNameSelect("사랑밭");
		int incomeDonationPriceTotal3 = 0;
		for(DonationPlanDto list : donationPlanNo3) {
			logger.debug("DonationPlanController.donationPlanMain planNo>>"+list.getDonationPlanNo());
			int incomeDonationPrice = incomeDonationService.incomeDonationPriceTotalSelect(list.getDonationPlanNo());
			incomeDonationPriceTotal3 += incomeDonationPrice;
		}
		model.addAttribute("incomeDonationPriceTotal3", incomeDonationPriceTotal3);
		//------세이브더칠드런 총 수익금
		List<DonationPlanDto> donationPlanNo4 = donationPlanService.donationPlanNoForDonationNameSelect("세이브더칠드런");
		int incomeDonationPriceTotal4 = 0;
		for(DonationPlanDto list : donationPlanNo4) {
			logger.debug("DonationPlanController.donationPlanMain planNo>>"+list.getDonationPlanNo());
			int incomeDonationPrice = incomeDonationService.incomeDonationPriceTotalSelect(list.getDonationPlanNo());
			incomeDonationPriceTotal4 += incomeDonationPrice;
		}
		model.addAttribute("incomeDonationPriceTotal4", incomeDonationPriceTotal4);
		//------WECA 총 수익금
		List<DonationPlanDto> donationPlanNo5 = donationPlanService.donationPlanNoForDonationNameSelect("WECA");
		int incomeDonationPriceTotal5 = 0;
		for(DonationPlanDto list : donationPlanNo5) {
			logger.debug("DonationPlanController.donationPlanMain planNo>>"+list.getDonationPlanNo());
			int incomeDonationPrice = incomeDonationService.incomeDonationPriceTotalSelect(list.getDonationPlanNo());
			incomeDonationPriceTotal5 += incomeDonationPrice;
		}
		model.addAttribute("incomeDonationPriceTotal5", incomeDonationPriceTotal5);
		//기부단체명,기부금계획서(제목,날짜) 검색
		List<DonationPlanDto> list = donationPlanService.donationPlanSelect();	
		logger.debug("DonationPlanController.donationPlanMain toString>>"+list.toString());
		model.addAttribute("list", list);
		return "donationPlan/donation_plan_main";
	}
	
	//기부금 계획서 상세검색
	@RequestMapping(value = "/donationPlanSelectDetail", method = RequestMethod.GET)
	public String donationPlanSelectDetail(Model model
											,@RequestParam(value="donationPlanNo") int donationPlanNo
											,@RequestParam(value="donationPlanDate") String donationPlanDate ) {
		
		logger.debug("DonationPlanController.donationPlanSelectDetail donationPlanNo>>"+donationPlanNo);
		logger.debug("DonationPlanController.donationPlanSelectDetail donationPlanDate>>"+donationPlanDate);
		//기부금계획서(아이디,목적,기부금 사용기간, 모집목표액, 파일, 계획서 등록날짜)상세 검색
		DonationPlanDto donationPlanDto= donationPlanService.donationPlanDetailSelect(donationPlanNo);
		String donationPlanPurpose = donationPlanDto.getDonationPlanPurpose();
		int donationPlanGoalPrice = donationPlanDto.getDonationPlanGoalPrice();
		String donationPlanUseTerm = donationPlanDto.getDonationPlanUseTerm();
		int donationPlanFileNo = donationPlanDto.getDonationPlanFileNo();
		int donationPlanImageFileNo = donationPlanDto.getDonationPlanImageNo();
		model.addAttribute("donationPlanPurpose", donationPlanPurpose);
		model.addAttribute("donationPlanGoalPrice", donationPlanGoalPrice);
		model.addAttribute("donationPlanUseTerm", donationPlanUseTerm);
		model.addAttribute("donationPlanFileNo", donationPlanFileNo);
		model.addAttribute("donationPlanNo", donationPlanNo);
		//계획서 등록날짜
		model.addAttribute("donationPlanDate", donationPlanDate);
		//기부금파일넘버를 매개변수로 받아 파일(이름,확장자)검색
		FileDto fileDto = fileService.donationPlanFileSelect(donationPlanFileNo);
		String fileName = fileDto.getFileName();
		String fileExt = fileDto.getFileExt();
		//기부금이미지파일넘버를 매개변수로 받아 파일(이름,확장자)검색
		FileDto imageFileDto = fileService.donationPlanFileSelect(donationPlanImageFileNo);
		String imageFileName = imageFileDto.getFileName();
		String imageFileExt = imageFileDto.getFileExt();
		model.addAttribute("fileName", fileName);
		model.addAttribute("fileExt", fileExt);
		model.addAttribute("imageFileName", imageFileName);
		model.addAttribute("imageFileExt", imageFileExt);
		return "donationPlan/donation_plan_select";
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
		//기부계획서 등록시 기부금액은 0으로 등록
		incomeDonationService.incomeDonationPriceInsert(donationPlanNo);
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
		List<DonationPlanDto> list = donationPlanService.donationSelect();
		//총 수입기부금 검색
		int incomeDonationPrice = incomeDonationService.incomeDonationPriceSelectOne();
		model.addAttribute("list", list);
		model.addAttribute("incomeDonationPrice", incomeDonationPrice);
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
		String level = (String) session.getAttribute("level");
		//최종캐쉬금액 검색
		if(level.equals("일반회원")) {
			int totalCash = cashRecordService.totalCashRecordSelectOne(userId);
			model.addAttribute("totalCash", totalCash);
		}
		//해당 기부계획서의 총 수입기부금 검색
		int donationPlanPrice = incomeDonationService.incomeDonationPlanPriceSelectOne(donationPlanNo);
		if(donationPlanPrice != 0) {
			
		}
		model.addAttribute("list", list);
		model.addAttribute("donationPlanPrice", donationPlanPrice);
		return "donation/donation_select_detail";
	}
	
	//기부금 계획서 삭제
	@RequestMapping(value = "/donationPlanDelete", method = RequestMethod.GET)
	public String donationPlanDelete(@RequestParam(value="donationPlanNo") int donationPlanNo
									,@RequestParam(value="fileName") String fileName
									,@RequestParam(value="fileExt") String fileExt
									,@RequestParam(value="imageFileName") String imageFileName
									,@RequestParam(value="imageFileExt") String imageFileExt) {
		logger.debug("DonationPlanController.donationPlanDelete donationPlanNo>>"+donationPlanNo);
		logger.debug("DonationPlanController.donationPlanDelete fileName>>"+fileName);
		logger.debug("DonationPlanController.donationPlanDelete fileExt>>"+fileExt);
		logger.debug("DonationPlanController.donationPlanDelete imageFileName>>"+imageFileName);
		logger.debug("DonationPlanController.donationPlanDelete imageFileExt>>"+imageFileExt);
		//기부금 계획서 삭제
		donationPlanService.donationPlanDelete(donationPlanNo);
		//기부금 계획서 파일 삭제
		fileService.fileDelete(donationPlanNo, fileName, fileExt);
		//기부금 계획서 이미지 삭제
		fileService.fileDelete(donationPlanNo, imageFileName, imageFileExt);
		return "redirect:donationPlanMain";
	}
}
