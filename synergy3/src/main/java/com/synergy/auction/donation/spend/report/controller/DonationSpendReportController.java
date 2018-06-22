package com.synergy.auction.donation.spend.report.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.ListModel;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.synergy.auction.donation.plan.controller.DonationPlanController;
import com.synergy.auction.donation.plan.service.DonationPlanDto;
import com.synergy.auction.donation.plan.service.DonationPlanService;
import com.synergy.auction.donation.spend.report.service.DonationSpendReportDto;
import com.synergy.auction.donation.spend.report.service.DonationSpendReportService;
import com.synergy.auction.file.service.FileDto;
import com.synergy.auction.file.service.FileService;
import com.synergy.auction.income.donation.service.IncomeDonationDto;
import com.synergy.auction.income.donation.service.IncomeDonationService;

@Controller
public class DonationSpendReportController {

	@Autowired
	private DonationSpendReportService donationSpendReportService;
	@Autowired
	private DonationPlanService donationPlanService;
	@Autowired
	private FileService fileService;
	@Autowired
	private IncomeDonationService incomeDonationService;
	
	private static final Logger logger = LoggerFactory.getLogger(DonationSpendReportController.class);
	
	//기부금 지출보고서(기부단체,제목,날짜) 검색
	@RequestMapping(value = "/donationSpendReport", method = RequestMethod.GET)
	public String donationSpendReport(Model model) {
		
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
		List<DonationSpendReportDto> list = donationSpendReportService.donationSpendReportSelect();
		model.addAttribute("list", list);
		return "donationSpendReport/donation_spend_report_main";
	}
	
	//기부금 지출보고서 상세 검색
	@RequestMapping(value = "/donationSpendReportSelect", method = RequestMethod.GET)
	public String donationSpendReportSelect(Model model
											,@RequestParam(value="donationSpendReportNo") int donationSpendReportNo) {
		
		logger.debug("DonationSpendReportController.donationSpendReportSelect donationSpendReportNo>>"+donationSpendReportNo);
		//기부금 지출보고서(계획서 넘버,보고서 파일넘버,제목,내용,기부액 사용 날짜,기부내역,보고서 등록날짜) 상세 검색
		DonationSpendReportDto donationSpendReportdto= donationSpendReportService.donationSpendReportDetailSelect(donationSpendReportNo);
		model.addAttribute("donationSpendReportdto", donationSpendReportdto);
		int fileNo = donationSpendReportdto.getDonationReportFileNo();
		FileDto file = fileService.donationPlanFileSelect(fileNo);
		model.addAttribute("file", file);
		return "donationSpendReport/donation_spend_report_select";
	}
	
	//기부금 지출보고서 동의
	@RequestMapping(value = "/donationSpendReportAgreement", method = RequestMethod.GET)
	public String donationSpendReportAgreement() {
		
		return "donationSpendReport/donation_spend_report_agreement";
	}
	
	//기부금 지출보고서 등록 화면
	@RequestMapping(value = "/donationSpendReportInsertView", method = RequestMethod.POST)
	public String donationSpendReportInsertView(HttpSession session
												,Model model) {
		
		String donatorId = (String) session.getAttribute("id");
		//보고서 작성시 해당 계획서 넘버 검색
		List<DonationPlanDto> list = donationPlanService.donationPlanNoSelect(donatorId);
		logger.debug("DonationSpendReportController.donationSpendReportInsertView donationPlanNo>>"+list.toString());
		model.addAttribute("list", list);
		return "donationSpendReport/donation_spend_report_insert";
	}
	
	//기부금 지출보고서 등록 처리
	@RequestMapping(value = "/donationSpendReportInsert", method = RequestMethod.POST)
	public String donationSpendReportInsert(HttpSession session
											,DonationSpendReportDto donationSpendReportDto
											,@RequestParam(value="fileName") MultipartFile fileName
											,@RequestParam(value="donationPlanNo") int donationPlanNo) {
		
		String donatorId = (String) session.getAttribute("id");
		logger.debug("DonationSpendReportController.donationSpendReportInsert donatorId>>"+donatorId);
		logger.debug("DonationSpendReportController.donationSpendReportInsert donationSpendReportDto>>"+donationSpendReportDto.toString());
		donationSpendReportDto.setDonatorId(donatorId);
		//기부금 지출보고서(아이디,제목,내용,기부금 사용날짜,기부 내역) 등록
		donationSpendReportService.donationSpendReportInsert(donationSpendReportDto);
		logger.debug("DonationSpendReportController.donationSpendReportInsert fileName>>"+fileName);
		//기부단체아이디를 매개변수로 받아 기부 지출 보고서 넘버 검색
		int donationSpendReportNo = donationSpendReportService.donationSpendReportNoSelectOne(donatorId);
		//파일이 존재할 경우,기부금 계획서 파일 등록
		if(fileName != null) {
			fileService.fileInsert(fileName,donationSpendReportNo);
		}
		//파일 테이블명 수정
		fileService.fileNameUpdate(donationSpendReportNo);
		//기부금 지출 보고서 파일넘버 검색  
		int donationSpendReportFileNo = fileService.donationSpendReportFileNoSelect(donationSpendReportNo);
		donationSpendReportDto.setDonationReportFileNo(donationSpendReportFileNo);
		logger.debug("DonationSpendReportController.donationSpendReportInsert donationSpendReportFileNo>>"+donationSpendReportFileNo);
		//해당 계획서 번호
		logger.debug("DonationSpendReportController.donationSpendReportInsert donationPlanNo>>"+donationPlanNo);
		donationSpendReportDto.setDonationSpendReportNo(donationSpendReportNo);
		//기부금 지출보고서 파일넘버,계획서번호 수정
		donationSpendReportService.donationSpendReportUpdate(donationSpendReportDto);
		//해당 계획서에 관련된 수입기부금 넘버 검색
		List<IncomeDonationDto> list = incomeDonationService.incomeDonationPlanNoSelect(donationPlanNo);
		logger.debug("DonationSpendReportController.donationSpendReportInsert incomeDonationNo toString>>"+list.toString());
		for(IncomeDonationDto incomeDonation : list) {
			int incomeDonationNo = incomeDonation.getIncomeDonationNo();
			logger.debug("DonationSpendReportController.donationSpendReportInsert incomeDonationNo>>"+incomeDonationNo);
			donationSpendReportDto.setIncomeDonationNo(incomeDonationNo);
			//수입기부금 넘버 및 (아이디,계획서넘버)등록
			donationSpendReportService.incomeDonationNoInsert(donationSpendReportDto);
		}
		return "donationSpendReport/donation_spend_report_commit";
	}
	
	//기부금 지출보고서 삭제
	@RequestMapping(value = "/donationSpendReportDelete", method = RequestMethod.GET)
	public String donationSpendReportDelete(@RequestParam(value="donationPlanNo") int donationPlanNo
											,@RequestParam(value="donationSpendReportNo") int donationSpendReportNo
											,@RequestParam(value="fileName") String fileName
											,@RequestParam(value="fileExt") String fileExt) {
		
		logger.debug("DonationSpendReportController.donationSpendReportDelete donationPlanNo>>"+donationPlanNo);
		logger.debug("DonationSpendReportController.donationSpendReportDelete donationSpendReportNo>>"+donationSpendReportNo);
		logger.debug("DonationSpendReportController.donationSpendReportDelete fileName>>"+fileName);
		logger.debug("DonationSpendReportController.donationSpendReportDelete fileExt>>"+fileExt);
		//기부금 지출보고서 삭제
		donationSpendReportService.donationSpendReportDelete(donationPlanNo);
		//파일넘버를 매개변수로 받아 파일 삭제
		fileService.fileDelete(donationSpendReportNo,fileName,fileExt);
		return "donationSpendReport/donation_spend_report_main";
	}
}
