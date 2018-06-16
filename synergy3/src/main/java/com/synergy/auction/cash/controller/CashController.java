package com.synergy.auction.cash.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.synergy.auction.cash.service.AccountDto;
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
	
	//캐쉬 충전 화면
	@RequestMapping(value = "/cashRecordInsert", method = RequestMethod.GET)
	public String cashRecordInsertView() {
		return "cash/cash_record_insert";
	}
	
	//캐쉬 총액
	@RequestMapping(value = "/cashRecordTotal", method = RequestMethod.GET)
	@ResponseBody
	public int cashRecordTotal(Model model,@RequestParam(value="id") String id) {
		int totalCash = cashRecordService.totalCashRecordSelectOne(id);
		return totalCash;
	}
	
	//캐쉬 충전 
	@RequestMapping(value = "/cashRecordInsert", method = RequestMethod.POST)
	public String cashRecordInsert(HttpSession session
									,Model model
									,@RequestParam(value="cashRecordChange") int cashRecordChange
									,@RequestParam(value="accountBankName") String accountBankName
									,@RequestParam(value="accountDepositName") String accountDepositName
									,CashRecordDto cashRecordDto
									,AccountDto accountDto) {
		logger.debug("CashController.cashRecordInsert >> cashRecordChange :"+cashRecordChange);
		String userId = (String) session.getAttribute("id");
		logger.debug("CashController.cashRecordInsert >> userId :"+userId);
		cashRecordDto.setUserId(userId);
		cashRecordDto.setCashRecordChange(cashRecordChange);
		//가장최근의 총금액 검색
		int cashRecordTotal = cashRecordService.cashRecordTotalSelect(userId);
		cashRecordDto.setCashRecordTotal(cashRecordTotal);
		logger.debug("CashController.cashRecordInsert >> cashRecordTotal :"+cashRecordTotal);
		//캐쉬 충전
		cashRecordService.cashRecordInsert(cashRecordDto);
		//가장최근의 캐쉬총금액과 '충전금액을  더하여 '현 총잔액' 구하기
		cashRecordService.cashRecordTotalUpdate(cashRecordDto);
		model.addAttribute("cashRecordChange", cashRecordChange);
		//계좌 등록
		logger.debug("CashController.cashRecordInsert >> accountBankName :"+accountBankName);
		logger.debug("CashController.cashRecordInsert >> accountDepositName :"+accountDepositName);
		logger.debug("CashController.cashRecordInsert >> userId :"+userId);
		accountDto.setUserId(userId);
		accountDto.setAccountBankName(accountBankName);
		accountDto.setAccountDepositName(accountDepositName);
		cashRecordService.accountInsert(accountDto);
		return "cash/cash_record_insert_commit";
		
	}
	
	//캐쉬 사용내역 검색(페이징)
	@RequestMapping(value = "/cashRecordSelect", method = RequestMethod.GET)
	public String cashRecordSelect(Model model
									,@RequestParam(value="userId") String userId
									,@RequestParam(value="currentPage",defaultValue="1") int currentPage) {
		logger.debug("CashController.cashRecordSelect >> userId :"+userId);
		Map<String, Object> map = cashRecordService.totalCashRecord(userId,currentPage);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("lastPage",map.get("lastPage"));
		return "cash/cash_record_select";
	}
}
