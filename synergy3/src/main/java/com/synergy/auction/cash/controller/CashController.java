package com.synergy.auction.cash.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.cash.service.CashRecordService;

@Controller
public class CashController {

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
									,Model model
									,@RequestParam(value="cashRecordChange") int cashRecordChange
									,CashRecordDto cashRecordDto) {
		logger.debug("CashController.cashRecordInsert >> cashRecordChange :"+cashRecordChange);
		String userId = (String) session.getAttribute("id");
		logger.debug("CashController.cashRecordInsert >> userId :"+userId);
		cashRecordDto.setUserId(userId);
		cashRecordDto.setCashRecordChange(cashRecordChange);
		//가장최근의 총금액 검색
		int cashRecordTotal = cashRecordService.cashRecordTotalSelect(userId);
		cashRecordDto.setCashRecordTotal(cashRecordTotal);
		logger.debug("CashController.cashRecordTotalSelect >> cashRecordTotal :"+cashRecordTotal);
		//캐쉬 충전
		cashRecordService.cashRecordInsert(cashRecordDto);
		//가장최근의 캐쉬총금액과 '충전금액을  더하여 '현 총잔액' 구하기
		cashRecordService.cashRecordTotalUpdate(cashRecordDto);
		return "home";
	}
	
	//캐쉬 사용내역조회 화면
	@RequestMapping(value = "/cashSelect", method = RequestMethod.GET)
	public String cashSelect() {
		return "cash/cash_select";
	}
}
