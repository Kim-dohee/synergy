package com.synergy.auction.cash.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CashController {

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
	public String cashRecordInsert() {
		return "home";
	}
	
	//캐쉬 사용내역조회 화면
	@RequestMapping(value = "/cashSelect", method = RequestMethod.GET)
	public String cashSelect() {
		return "cash/cash_select";
	}
}
