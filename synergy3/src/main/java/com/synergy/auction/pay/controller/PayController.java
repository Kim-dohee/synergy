package com.synergy.auction.pay.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.admin.service.AdminDto;
import com.synergy.auction.admin.service.AdminService;
import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.cash.service.CashRecordService;
import com.synergy.auction.pay.service.PayService;


@Controller
public class PayController {

	@Autowired 
	private CashRecordService cashRecordService;
	@Autowired 
	private PayService payService;
	
	@RequestMapping(value = "/payInsert", method = RequestMethod.POST)
	public String adminInsert(@RequestParam(value="successfulBid") int successfulBid,HttpSession session,CashRecordDto cashRecordDto
								,@RequestParam(value="sellerId") String sellerId
								,@RequestParam(value="successfulBidNo")int successfulBidNo) {
		String userId = (String)session.getAttribute("id");
		int cashRecordTotal = cashRecordService.cashRecordTotalSelect(userId);
		int cashRecordChange = cashRecordTotal-successfulBid;
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("userId", userId);
		map.put("successfulBid", successfulBid);
		map.put("cashRecordChange", cashRecordChange);
		Map<Object, Object> cashRecordNo = cashRecordService.cashRecordInsertBuy(map);
		
		System.out.println(cashRecordNo.get(cashRecordNo)+"캐시이력넘버");
		System.out.println(successfulBidNo+"낙찰넘버");
		System.out.println(sellerId+"판매자 아이디");
		System.out.println(userId+"구매자 아이디");
		/*payService.payInsert();*/
		
		return "home";
	}
}
