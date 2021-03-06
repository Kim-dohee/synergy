/*[김도희]*/
package com.synergy.auction.donator.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.cash.service.CashRecordService;
import com.synergy.auction.donator.service.DonatorDto;
import com.synergy.auction.donator.service.DonatorService;

@Controller
public class DonatorController {

	@Autowired
	private DonatorService donatorService;
	@Autowired
	private CashRecordService cashRecordService;
	
	private static final Logger logger = LoggerFactory.getLogger(DonatorController.class);

	//약관동의 화면
	@RequestMapping(value = "/donatorAgreement", method = RequestMethod.GET)
	public String donatorAgreement() {
		return "donator/donator_agreement";
	}
	
	//기부단체 회원가입 화면
	@RequestMapping(value = "/donatorInsertView", method = RequestMethod.POST)
	public String donatorInsertView() {
		return "donator/donator_insert";
	}
	
	//기부단체 회원가입 
	@RequestMapping(value = "/donatorInsert", method = RequestMethod.POST)
	public String donatorInsert(DonatorDto donatorDto,@RequestParam(value="donatorId") String donatorId) {
		logger.info("DonatorController.donatorInsert toString() >>"+donatorDto.toString());
		//회원정보 입력
		donatorService.donatorInsert(donatorDto);
		cashRecordService.cashRecordTotalInsert(donatorId);
		return "donator/donator_insert_commit";
	}

	//기부단체 회원정보수정을위한 검색
	@RequestMapping(value = "/donatorUpdate", method = RequestMethod.GET)
	public String donatorUpdate(HttpSession session, Model model) {
		String donatorId = (String)session.getAttribute("id");
		model.addAttribute("donator", donatorService.donatorSelectOne(donatorId));
		System.out.println("aaaaaaaaaaaaa"+donatorService.donatorSelectOne(donatorId));
		return "donator/donator_update";
	}
	
	//기부단체 회원정보 수정
	@RequestMapping(value = "/donatorUpdate", method = RequestMethod.POST)
	public String donatorUpdate(DonatorDto donator) {
		donatorService.donatorUpdate(donator);
		return "home";
	}
}
