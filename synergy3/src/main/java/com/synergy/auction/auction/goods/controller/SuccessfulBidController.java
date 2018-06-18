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

@Controller
public class SuccessfulBidController {
	@Autowired
	private SuccessfulBidService successfulBidService;
	@Autowired
	private AuctionGoodsService auctionGoodsService;
	
	private static final Logger logger = LoggerFactory.getLogger(SuccessfulBidController.class);

	
	//입찰 등록
	@RequestMapping(value = "/successfulBidInsert", method = RequestMethod.GET)
	public String successfulBidSearch(Model model
										,@RequestParam(value="bidNo") String bidNo
										,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo
										,@RequestParam(value="successfulBidPrice") String successfulBidPrice) {
		Map<Object, Object> map = new HashMap<Object, Object>();
		System.out.println(successfulBidPrice+"bidPricebidPricebidPricebidPricebidPricebidPricebidPricebidPricebidPrice");
		System.out.println(bidNo+"bidNobidNobidNobidNobidNobidNobidNobidNobidNobidNo");
		map.put("bidNo", bidNo);
		map.put("successfulBidPrice", successfulBidPrice);
		successfulBidService.successfulBidInsert(map);
		
		model.addAttribute("list",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "bid/successful_bid_check";
	}
	//입찰 등록
	@RequestMapping(value = "/successfulBidNowInsert", method = RequestMethod.GET)
	public String successfulBidNowSearch(Model model
			,@RequestParam(value="bidNo") String bidNo
			,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo
			,@RequestParam(value="auctionGoodsInstanceBuyPrice") String auctionGoodsInstanceBuyPrice) {
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		System.out.println(auctionGoodsInstanceBuyPrice+"auctionGoodsInstanceBuyPriceauctionGoodsInstanceBuyPrice");
		map.put("bidNo", bidNo);
		map.put("auctionGoodsInstanceBuyPrice", auctionGoodsInstanceBuyPrice);
		successfulBidService.successfulBidNowInsert(map);
		
		model.addAttribute("list",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "bid/successful_bid_check";
	}
}
