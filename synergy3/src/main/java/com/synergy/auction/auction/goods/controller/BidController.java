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
public class BidController {
	@Autowired
	private BidService bidService;
	@Autowired
	private AuctionGoodsService auctionGoodsService;

	private static final Logger logger = LoggerFactory.getLogger(BidController.class);

	
	//입찰 등록
	@RequestMapping(value = "/bidInsert", method = RequestMethod.POST)
	public String bidInsert(Model model, @RequestParam(value="auctionGoodsNo") String auctionGoodsNo,BidDto bidDto) {
		auctionGoodsService.auctionGoodsUpdate(auctionGoodsNo);
		bidService.bidInsert(bidDto);
		auctionGoodsService.auctionGoodsHit(auctionGoodsNo);
		model.addAttribute("datailList",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "auctionGoods/auction_goods_detail";
	}
	
	//입찰  재등록
	@RequestMapping(value = "/bidInsertAgain", method = RequestMethod.POST)
	public String bidInsertAgain(Model model, @RequestParam(value="auctionGoodsNo") String auctionGoodsNo,BidDto bidDto) {
		bidService.bidInsert(bidDto);
		auctionGoodsService.auctionGoodsHit(auctionGoodsNo);
		model.addAttribute("datailList",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "auctionGoods/auction_goods_detail";
	}
	
	
}
