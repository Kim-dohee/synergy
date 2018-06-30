package com.synergy.auction.income.donation.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.cash.controller.CashController;
import com.synergy.auction.cash.service.CashRecordDto;
import com.synergy.auction.cash.service.CashRecordService;
import com.synergy.auction.donator.service.DonatorDto;
import com.synergy.auction.income.donation.service.IncomeDonationDto;
import com.synergy.auction.income.donation.service.IncomeDonationService;
import com.synergy.auction.pay.service.PayService;

@Controller
public class IncomeDonationController {

	@Autowired 
	private CashRecordService cashRecordService;
	@Autowired
	private IncomeDonationService incomeDonationService;
	@Autowired
	private PayService payService;
	
	private static final Logger logger = LoggerFactory.getLogger(IncomeDonationController.class);
	
	//기부금 기부하기
	@RequestMapping(value = "/incomeDonation", method = RequestMethod.POST)
	public String incomeDonation(HttpSession session
								,@RequestParam(value="incomeDonationPrice") int incomeDonationPrice
								,@RequestParam(value="donationPlanNo") int donationPlanNo
								,IncomeDonationDto incomeDonationDto
								,CashRecordDto cashRecordDto) {
		
		String userId = (String) session.getAttribute("id");
		logger.debug("IncomeDonationController.donationUse userId>>"+userId);
		logger.debug("IncomeDonationController.donationUse incomeDonationPrice>>"+incomeDonationPrice);
		logger.debug("IncomeDonationController.donationUse donationPlanNo>>"+donationPlanNo);
		//(보유 총 캐쉬 - 기부한 금액)총캐쉬
		int donationUsePrice = cashRecordService.donationCashSelectOne(incomeDonationPrice);
		logger.debug("IncomeDonationController.donationUse donationUsePrice>>"+donationUsePrice);
		cashRecordDto.setUserId(userId);
		cashRecordDto.setCashRecordTotal(donationUsePrice);
		//기부즉시 총 보유캐쉬금액 수정
		cashRecordService.cashRecordTotalUpdateOne(cashRecordDto);
		incomeDonationDto.setUserId(userId);
		incomeDonationDto.setIncomeDonationPrice(incomeDonationPrice);
		incomeDonationDto.setDonationPlanNo(donationPlanNo);
		incomeDonationService.incomeDonationInsert(incomeDonationDto);
		//기부금 (아이디,기부액,기부금계획서넘버)등록
		return "home";
	}
	//경매로 나온 기부금 기부하기
	@RequestMapping(value = "/incomeDonationAuction", method = RequestMethod.GET)
	public String incomeDonationAuction(HttpSession session,Model model
								,@RequestParam(value="currentPage",defaultValue="1") int currentPage
								,@RequestParam(value="incomeDonationPrice") int incomeDonationPrice
								,@RequestParam(value="donationPlanNo") int donationPlanNo
								,@RequestParam(value="payNo") int payNo
								,@RequestParam(value="userId") String userId
								,@RequestParam(value="cashRecordNo") int cashRecordNo
								,IncomeDonationDto incomeDonationDto) {
		//기부금 (아이디,기부액,기부금계획서넘버)등록
		logger.debug("IncomeDonationController.donationUse userId>>"+userId);
		logger.debug("IncomeDonationController.donationUse incomeDonationPrice>>"+incomeDonationPrice);
		logger.debug("IncomeDonationController.donationUse donationPlanNo>>"+donationPlanNo);
		incomeDonationDto.setUserId(userId);
		incomeDonationDto.setIncomeDonationPrice(incomeDonationPrice);
		incomeDonationDto.setDonationPlanNo(donationPlanNo);
		incomeDonationDto.setPayNo(payNo);
		incomeDonationService.incomeDonationInsert(incomeDonationDto);
		
		//기부하기 버튼 클릭시 캐시카테고리 변경.
		cashRecordService.cashRecordUpdate(cashRecordNo);
		//기부하기 버튼 클릭시 결제 변경.
		payService.payUpdateSuccess(payNo);
		
		//리스트 보이기
		logger.debug("CashController.cashRecordSelect >> userId :"+userId);
		Map<String, Object> map = cashRecordService.totalCashRecord(userId,currentPage);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("lastPage",map.get("lastPage"));
		//캐시 사용내역 검색과 구매된 상품 같이보기.
		model.addAttribute("cashGoods",cashRecordService.cashSelectGoods());
		return "cash/cash_record_select_admin";
	}
	
}
