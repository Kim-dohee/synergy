package com.synergy.auction.auction.goods.controller;



import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;
import com.synergy.auction.auction.goods.service.AuctionGoodsService;
import com.synergy.auction.cash.service.CashRecordService;
import com.synergy.auction.donation.plan.service.DonationPlanDto;
import com.synergy.auction.donation.plan.service.DonationPlanService;
import com.synergy.auction.file.service.FileService;

@Controller
public class AuctionGoodsController {
	@Autowired
	private AuctionGoodsService auctionGoodsService;
	@Autowired
	private CashRecordService cashRecordService;
	@Autowired
	private FileService fileService;
	@Autowired
	private DonationPlanService donationPlanService;

	private static final Logger logger = LoggerFactory.getLogger(AuctionGoodsController.class);
	
	@RequestMapping(value = "/auctionGoodsInsert", method = RequestMethod.GET)
	public String auctionGoodsInsert(Model model) {
		//경매 등록시 기부금 계획서를 넣기위해 조회를 한다.
		
		List<DonationPlanDto> list = donationPlanService.donationPlanSelect();
		model.addAttribute("list", list);
		return "auctionGoods/auction_goods_insert";
	}
	
	//경매품 추가
	@RequestMapping(value = "/auctionGoodsInsert", method = RequestMethod.POST)
	public String auctionGoodsInsert(AuctionGoodsDto auctionGoodsDto,Model model
									,@RequestParam(value="fileImage") MultipartFile fileImage
									,HttpServletRequest request
									,@RequestParam(value="currentPage",defaultValue="1") int currentPage) {
		int auctionGoodsNo= auctionGoodsService.auctionGoodsInsert(auctionGoodsDto);
		//사진파일이 등록되었을때 메서드 실행.
		if(fileImage.isEmpty()==false) {
			fileService.auctionFileInsert(fileImage,auctionGoodsNo,request);
			int auctionGoodsFileNo = fileService.auctionFileNoSelect(auctionGoodsNo);
			auctionGoodsDto.setAuctionGoodsFileNo(auctionGoodsFileNo);
			//경매품테이블의 사진칼럼 업데이트
			auctionGoodsService.auctionGoodsFileNoUpdate(auctionGoodsDto);
		}
		
		Map<String, Object> map = auctionGoodsService.auctionGoodsSelect(currentPage);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("lastPage",map.get("lastPage"));
		
		return "auctionGoods/auction_goods_search";
	}

	//경매품 리스트
	@RequestMapping(value = "/auctionGoodsSelect", method = RequestMethod.GET)
	public String auctionGoodsSelect(Model model
									,@RequestParam(value="currentPage",defaultValue="1") int currentPage) {
		
		Map<String, Object> map = auctionGoodsService.auctionGoodsSelect(currentPage);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("lastPage",map.get("lastPage"));
		return "auctionGoods/auction_goods_search";
	}
	
	
	//경매품 소분류 리스트
	@RequestMapping(value = "/auctionGoodsSelectCategory", method = RequestMethod.GET)
	public String auctionGoodsSelectCategory(Model model
			,@RequestParam(value="currentPage",defaultValue="1") int currentPage
			,@RequestParam(value="category",defaultValue="1") int category) {
		
		Map<String, Object> map = auctionGoodsService.auctionGoodsSelectCategory(currentPage,category);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("lastPage",map.get("lastPage"));
		return "auctionGoods/auction_goods_search";
	}
	
	//경매품 대분류 리스트
	@RequestMapping(value = "/auctionGoodsSelectBigCategory", method = RequestMethod.GET)
	public String auctionGoodsSelectBigCategory(Model model
			,@RequestParam(value="currentPage",defaultValue="1") int currentPage
			,@RequestParam(value="BigCategory",defaultValue="1") int BigCategory) {
		
		Map<String, Object> map = auctionGoodsService.auctionGoodsSelectBigCategory(currentPage,BigCategory);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("lastPage",map.get("lastPage"));
		return "auctionGoods/auction_goods_search";
	}
	
	
	//경매품 삭제
	@RequestMapping(value = "/auctionGoodsRemove", method = RequestMethod.GET)
	public String auctionGoodsDelete(Model model
									,@RequestParam(value="auctionGoodsNo") int auctionGoodsNo) {
		
		auctionGoodsService.auctionGoodsRemove(auctionGoodsNo);
		return "redirect:/userDetailAuction";
	}
	
	//경매품 상세정보
	@RequestMapping(value = "/auctionGoodsDetail", method = RequestMethod.GET)
	public String auctionGoodsSelectOne(Model model
										,HttpSession session
										,@RequestParam(value="auctionGoodsNo") String auctionGoodsNo) throws ParseException {
		
		String userId = (String)session.getAttribute("id");
		model.addAttribute("cashTotal", cashRecordService.totalCashRecordSelectOne(userId));
		auctionGoodsService.auctionGoodsHit(auctionGoodsNo);
		AuctionGoodsDto detailList = auctionGoodsService.auctionGoodsSelectOne(auctionGoodsNo);
		int donationPlanNo = detailList.getDonationPlanNo();
		
		String BidEndDate = detailList.getAuctionGoodsBidEndDate();

		
		Date from = new Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String nowTime = transFormat.format(from);
		
		
		
		System.out.println(BidEndDate);
		System.out.println(nowTime);
		if(BidEndDate!=null) {
			if(nowTime.compareTo(BidEndDate)>0){
				auctionGoodsService.auctionGoodsUpdateState(auctionGoodsNo);
			}
		}
		System.out.println(donationPlanService.donationPlanSelectOne(donationPlanNo)+"aaaaaaaaaaaaaaaaaaaaaaaa");
		//기부금 계획서
		model.addAttribute("donation",donationPlanService.donationPlanSelectOne(donationPlanNo));
		//경매품 상세
		model.addAttribute("detailList",detailList);
		//입찰 
		model.addAttribute("bidList",auctionGoodsService.bidSelectOne(auctionGoodsNo));
		return "auctionGoods/auction_goods_detail";
	}
	
}
