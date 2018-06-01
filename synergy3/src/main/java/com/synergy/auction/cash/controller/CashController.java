package com.synergy.auction.cash.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.cash.service.CashRecordService;

@Controller
public class CashController {

	@Autowired 
	private CashRecordDto cashRecordDto;
	@Autowired 
	private CashRecordService cashRecordService;
	
	private static final Logger logger = LoggerFactory.getLogger(CashController.class);
	
	//캐쉬메인 화면
	@RequestMapping(value = "/cashMain", method = RequestMethod.GET)
	public String cashMain() {
		return "cash/cash_main";
	}
	
	//캐쉬 충전화면
	@RequestMapping(value = "/cashRecordInsert", method = RequestMethod.GET)
	public String cashRecordInsertView() {
		return "cash/cash_record_insert";
	}
	
	//캐쉬 충전
	@RequestMapping(value = "/cashRecordInsert", method = RequestMethod.POST)
	public String cashRecordInsert(HttpSession session
									,@RequestParam(value="cashRecordChange") int cashRecordChange) {
		logger.debug("CashController.cashRecordInsert >> cashRecordChange :"+cashRecordChange);
		//CashRecordDto타입으로 세팅
		String userId = (String) session.getAttribute("id");
		cashRecordDto.setUserId(userId);
		cashRecordDto.setCashRecordChange(cashRecordChange);
		//캐쉬 충전
		cashRecordService.cashRecordInsert(cashRecordDto);
		return "home";
	}
	
	//캐쉬 사용내역조회 화면
	@RequestMapping(value = "/cashSelect", method = RequestMethod.GET)
	public String cashSelect() {
		return "cash/cash_select";
	}
}
