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

@Controller
public class BidController {
	@Autowired
	private AuctionGoodsService auctionGoodsService;

	private static final Logger logger = LoggerFactory.getLogger(BidController.class);

	
	//입찰 등록
	@RequestMapping(value = "/bidInsert", method = RequestMethod.GET)
	public String bid(AuctionGoodsDto auctionGoodsDto) {
		return "auctionGoods/auction_goods_detail";
	}
	
	
}
