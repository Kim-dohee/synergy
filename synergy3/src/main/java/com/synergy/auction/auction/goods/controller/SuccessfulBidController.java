package com.synergy.auction.auction.goods.controller;



import java.util.List;

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
import com.synergy.auction.auction.goods.service.BidDto;
import com.synergy.auction.auction.goods.service.BidService;

@Controller
public class SuccessfulBidController {
	@Autowired
	private AuctionGoodsService auctionGoodsService;
	private static final Logger logger = LoggerFactory.getLogger(SuccessfulBidController.class);

	
	//입찰 등록
	@RequestMapping(value = "/successfulBidSearch", method = RequestMethod.POST)
	public String successfulBidSearch(Model model
										,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo) {
		model.addAttribute("list",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "bid/successful_bid_check";
	}

	
	
}
