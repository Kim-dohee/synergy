package com.synergy.auction.auction.goods.controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;
import com.synergy.auction.auction.goods.service.AuctionGoodsService;
import com.synergy.auction.cash.service.CashRecordService;
import com.synergy.auction.user.service.UserDto;
import com.synergy.auction.user.service.UserService;

@Controller
public class AuctionGoodsController {
	@Autowired
	private AuctionGoodsService auctionGoodsService;

	private static final Logger logger = LoggerFactory.getLogger(AuctionGoodsController.class);
	
	@RequestMapping(value = "/auctionGoodsInsert", method = RequestMethod.GET)
	public String auctionGoodsInsert() {
		return "auctionGoods/auction_goods_insert";
	}
	
	@RequestMapping(value = "/auctionGoodsInsert", method = RequestMethod.POST)
	public String auctionGoodsInsert(AuctionGoodsDto auctionGoodsDto) {
		auctionGoodsService.auctionGoodsInsert(auctionGoodsDto);
		return "home";
	}

	@RequestMapping(value = "/auctionGoodsSearch", method = RequestMethod.GET)
	public String auctionGoodsSearch(Model model,AuctionGoodsDto auctionGoodsDto) {
		List<AuctionGoodsDto> list = auctionGoodsService.auctionGoodsSearch(auctionGoodsDto);
		model.addAttribute("list",list);
		return "auctionGoods/auction_goods_search";
	}
	
	@RequestMapping(value = "/auctionGoodsDetail", method = RequestMethod.GET)
	public String auctionGoodsSelectOne(Model model
										,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo) {
		auctionGoodsService.auctionGoodsHit(auctionGoodsNo);
		model.addAttribute("datailList",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "auctionGoods/auction_goods_detail";
	}
}
