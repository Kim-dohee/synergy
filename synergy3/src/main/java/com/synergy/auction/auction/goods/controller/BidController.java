package com.synergy.auction.auction.goods.controller;




import java.util.HashMap;
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

import com.synergy.auction.auction.goods.service.AuctionGoodsService;
import com.synergy.auction.auction.goods.service.BidDto;
import com.synergy.auction.auction.goods.service.BidService;
import com.synergy.auction.cash.service.CashRecordService;

@Controller
public class BidController {
	@Autowired
	private BidService bidService;
	@Autowired
	private AuctionGoodsService auctionGoodsService;
	@Autowired
	private CashRecordService cashRecordService;

	private static final Logger logger = LoggerFactory.getLogger(BidController.class);

	
	//입찰 등록
	@RequestMapping(value = "/bidInsert", method = RequestMethod.POST)
	public String bidInsert(Model model
							,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo
							,@RequestParam(value="bidPrice") String bidPrice
							,HttpSession session) {
		
		String userId = (String)session.getAttribute("id");
		model.addAttribute("cashTotal", cashRecordService.totalCashRecordSelectOne(userId));
		
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("userId", userId);
		map.put("bidPrice", bidPrice);
		map.put("auctionGoodsNo", auctionGoodsNo);
		bidService.bidInsert(map);
		
		auctionGoodsService.auctionGoodsUpdate(auctionGoodsNo);
		auctionGoodsService.auctionGoodsHit(auctionGoodsNo);
		model.addAttribute("datailList",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "auctionGoods/auction_goods_detail";
	}
	
	//입찰  재등록
	@RequestMapping(value = "/bidInsertAgain", method = RequestMethod.POST)
	public String bidInsertAgain(Model model
			,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo
			,@RequestParam(value="bidPrice") String bidPrice
			,HttpSession session) {
		String userId = (String)session.getAttribute("id");
		model.addAttribute("cashTotal", cashRecordService.totalCashRecordSelectOne(userId));
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("userId", userId);
		map.put("bidPrice", bidPrice);
		map.put("auctionGoodsNo", auctionGoodsNo);
	
		bidService.bidInsert(map);
		auctionGoodsService.auctionGoodsHit(auctionGoodsNo);
		model.addAttribute("datailList",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "auctionGoods/auction_goods_detail";
	}
	
}
