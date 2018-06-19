package com.synergy.auction.auction.goods.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;
import com.synergy.auction.auction.goods.service.AuctionGoodsService;
import com.synergy.auction.auction.goods.service.SuccessfulBidService;
import com.synergy.auction.auction.goods.service.BidDto;
import com.synergy.auction.auction.goods.service.BidService;
import com.synergy.auction.auction.goods.service.SuccessfulBidDto;

@Controller
public class SuccessfulBidController {
	@Autowired
	private SuccessfulBidService successfulBidService;
	@Autowired
	private AuctionGoodsService auctionGoodsService;
	
	private static final Logger logger = LoggerFactory.getLogger(SuccessfulBidController.class);

	
	//낙찰 등록
	@RequestMapping(value = "/successfulBidInsert", method = RequestMethod.GET)
	public String successfulBidSearch(Model model
										,@RequestParam(value="bidNo") String bidNo
										,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo
										,@RequestParam(value="buyUserId") String buyUserId
										,@RequestParam(value="successfulBidPrice") String successfulBidPrice) {
		//낙찰 조회후 값이 없으면 추가해주고 있으면 추가를 안한다.
		if((successfulBidService.successfulBidSelectOne(auctionGoodsNo))==null) {
			Map<Object, Object> map = new HashMap<Object, Object>();
			map.put("userId", buyUserId);
			map.put("bidNo", bidNo);
			map.put("successfulBidPrice", successfulBidPrice);
			map.put("auctionGoodsNo", auctionGoodsNo);
			
			successfulBidService.successfulBidInsert(map);
		} else {
			
		}
		
		model.addAttribute("successfulBid",successfulBidService.successfulBidSelectOne(auctionGoodsNo));
		model.addAttribute("list",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "bid/successful_bid_check";
	}
	//즉시구매시 낙찰 등록
	@RequestMapping(value = "/successfulBidNowInsert", method = RequestMethod.GET)
	public String successfulBidNowSearch(Model model
			,@RequestParam(value="bidNo") String bidNo
			,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo
			,@RequestParam(value="auctionGoodsInstanceBuyPrice") String auctionGoodsInstanceBuyPrice) {
		if((successfulBidService.successfulBidSelectOne(auctionGoodsNo))==null) {
			Map<Object, Object> map = new HashMap<Object, Object>();
			
			map.put("bidNo", bidNo);
			map.put("auctionGoodsInstanceBuyPrice", auctionGoodsInstanceBuyPrice);
			map.put("auctionGoodsNo", auctionGoodsNo);
			successfulBidService.successfulBidNowInsert(map);
		} else {
			
		}
		
		
		model.addAttribute("successfulBid",successfulBidService.successfulBidSelectOne(auctionGoodsNo));
		model.addAttribute("list",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "bid/successful_bid_check_now";
	}
}
