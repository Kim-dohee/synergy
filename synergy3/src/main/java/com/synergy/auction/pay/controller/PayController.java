package com.synergy.auction.pay.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;
import com.synergy.auction.auction.goods.service.AuctionGoodsService;
import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.cash.service.CashRecordService;
import com.synergy.auction.pay.service.PayDto;
import com.synergy.auction.pay.service.PayService;


@Controller
public class PayController {

	@Autowired 
	private CashRecordService cashRecordService;
	@Autowired 
	private PayService payService;
	@Autowired 
	private AuctionGoodsService auctionGoodsService;
	
	
	//결제 추가
	@RequestMapping(value = "/payInsert", method = RequestMethod.POST)
	public String payInsert(@RequestParam(value="successfulBid") int successfulBid,HttpSession session
							,@RequestParam(value="sellerId") String sellerId
							,@RequestParam(value="successfulBidNo")int successfulBidNo
							,CashRecordDto cashRecordDto,PayDto payDto,int auctionGoodsNo) {
		String userId = (String)session.getAttribute("id");
		int cashRecordTotal = cashRecordService.cashRecordTotalSelect(userId);
		int cashRecordChange = cashRecordTotal-successfulBid;
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("userId", userId);
		map.put("successfulBid", successfulBid);
		map.put("cashRecordChange", cashRecordChange);
		map.put("cashCategory", "구매");
		int cashRecordNo = cashRecordService.cashRecordInsertBuy(map);

		String adminId = "2";
		
		int cashRecordTotalAdmin = cashRecordService.cashRecordTotalSelect(adminId);
		int cashRecordChangeAdmin = cashRecordTotalAdmin+successfulBid;
		Map<Object, Object> mapAdmin = new HashMap<Object, Object>();
		mapAdmin.put("userId", adminId);
		mapAdmin.put("successfulBid", successfulBid);
		mapAdmin.put("cashRecordChange", cashRecordChangeAdmin);
		mapAdmin.put("cashCategory", "입금");
		cashRecordService.cashRecordInsertBuy(mapAdmin);
		
		System.out.println(cashRecordNo+"캐시이력넘버");
		System.out.println(successfulBidNo+"낙찰넘버");
		System.out.println(sellerId+"판매자 아이디");
		System.out.println(userId+"구매자 아이디");
		payDto.setUserId(sellerId);
		payDto.setUserId2(userId);
		payDto.setCashRecordNo(cashRecordNo);
		payDto.setSuccessfulBidNo(successfulBidNo);
		payService.payInsert(payDto);
		auctionGoodsService.auctionGoodsUpdatePay(auctionGoodsNo);
		return "home";
	}

	//결제 상태 변경
	@RequestMapping(value = "/payUpdateDeliver", method = RequestMethod.GET)
	public String payUpdateDeliver(ModelMap modelMap,@RequestParam(value="payNo") int payNo,Model model,HttpSession session) {
		payService.payUpdateDeliver(payNo);
		modelMap.addAttribute("message", "배송하였습니다.!");
		modelMap.addAttribute("returnUrl", "userDetailAuction");
		return "alertAndRedirect";
	}
	
	//결제 상태 변경
	@RequestMapping(value = "/payUpdateConfilrm", method = RequestMethod.GET)
	public String payUpdateConfilrm(ModelMap modelMap,@RequestParam(value="payNo") int payNo,Model model,HttpSession session) {
		payService.payUpdateConfilrm(payNo);
		modelMap.addAttribute("message", "구매가 확정되었습니다.!");
		modelMap.addAttribute("returnUrl", "userDetailAuction");
		return "alertAndRedirect";
	}
	
}
