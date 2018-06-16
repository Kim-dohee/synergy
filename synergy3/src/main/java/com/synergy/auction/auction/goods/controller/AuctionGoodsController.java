package com.synergy.auction.auction.goods.controller;



import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
import org.springframework.web.multipart.MultipartFile;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;
import com.synergy.auction.auction.goods.service.AuctionGoodsService;
import com.synergy.auction.cash.service.CashRecordService;
import com.synergy.auction.file.service.FileService;
import com.synergy.auction.user.service.UserDto;
import com.synergy.auction.user.service.UserService;

@Controller
public class AuctionGoodsController {
	@Autowired
	private AuctionGoodsService auctionGoodsService;
	@Autowired
	private CashRecordService cashRecordService;
	@Autowired
	private FileService fileService;

	private static final Logger logger = LoggerFactory.getLogger(AuctionGoodsController.class);
	
	@RequestMapping(value = "/auctionGoodsInsert", method = RequestMethod.GET)
	public String auctionGoodsInsert() {
		return "auctionGoods/auction_goods_insert";
	}
	
	//경매품 추가
	@RequestMapping(value = "/auctionGoodsInsert", method = RequestMethod.POST)
	public String auctionGoodsInsert(AuctionGoodsDto auctionGoodsDto
									,@RequestParam(value="fileImage") MultipartFile fileImage) {
		int auctionGoodsNo= auctionGoodsService.auctionGoodsInsert(auctionGoodsDto);
		if(fileImage != null) {
			fileService.auctionFileInsert(fileImage,auctionGoodsNo);
		}
		int auctionGoodsFileNo = fileService.auctionFileNoSelect(auctionGoodsNo);
		auctionGoodsDto.setAuctionGoodsFileNo(auctionGoodsFileNo);
		logger.debug("asdfasasdfsadfsadfsdaf"+auctionGoodsDto.toString());
		auctionGoodsService.auctionGoodsFileNoUpdate(auctionGoodsDto);
		return "home";
	}

	//경매품 리스트
	@RequestMapping(value = "/auctionGoodsSearch", method = RequestMethod.GET)
	public String auctionGoodsSearch(Model model) {
		List<AuctionGoodsDto> list = auctionGoodsService.auctionGoodsSearch();
		System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+list);
		model.addAttribute("list",list);
		return "auctionGoods/auction_goods_search";
	}
	
	//경매품 상세정보
	@RequestMapping(value = "/auctionGoodsDetail", method = RequestMethod.GET)
	public String auctionGoodsSelectOne(Model model
										,HttpSession session
										,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo) {
		String userId = (String)session.getAttribute("id");
		model.addAttribute("cashTotal", cashRecordService.totalCashRecordSelectOne(userId));
		auctionGoodsService.auctionGoodsHit(auctionGoodsNo);
		model.addAttribute("datailList",auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo));
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "auctionGoods/auction_goods_detail";
	}
}
