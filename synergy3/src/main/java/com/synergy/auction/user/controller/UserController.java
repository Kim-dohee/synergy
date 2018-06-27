package com.synergy.auction.user.controller;



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
import com.synergy.auction.pay.service.PayDto;
import com.synergy.auction.pay.service.PayService;
import com.synergy.auction.user.service.UserDto;
import com.synergy.auction.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private CashRecordService cashRecordService;
	@Autowired
	private AuctionGoodsService auctionGoodsService;
	@Autowired
	private PayService payService;

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	//약관동의 화면
	@RequestMapping(value = "/userAgreement", method = RequestMethod.GET)
	public String userAgreement() {
		return "user/user_agreement";
	}
	
	//회원가입 화면
	@RequestMapping(value = "/userInsertView", method = RequestMethod.POST)
	public String userInsertView() {
		return "user/user_insert";
	}

	//회원가입 처리
	@RequestMapping(value = "/userInsert", method = RequestMethod.POST)
	public String userInsert(UserDto userDto
			 				,@RequestParam(value="userId") String userId) {
		userService.userInsert(userDto);
		return "redirect:/creditRecordInsert?userId="+userId;
	}

	//회원가입할때 만든 id로 no값을구해서 캐쉬 초기화 
	@RequestMapping(value = "/creditRecordInsert", method = RequestMethod.GET)
	public String creditCashInsert(Model model, UserDto userDto
							,@RequestParam(value="userId") String userId) {
		logger.debug("UserController.creditCashInsert id>>"+userService.userSelectOne(userId));
		//캐쉬 0원으로 초기화
		cashRecordService.cashRecordTotalInsert(userId);
		return "user/user_insert_commit";
	}
		
	//회원정보 화면
	@RequestMapping(value = "/userDetail", method = RequestMethod.GET)
	public String userDetail(HttpSession session, Model model) {
		String userId = (String)session.getAttribute("id");
		model.addAttribute("user", userService.userSelectOne(userId));
		
		return "user/user_detail";
	}
	
	//회원수정 전 비밀번호 확인 화면
	@RequestMapping(value = "/userUpdateConfirm", method = RequestMethod.GET)
	public String userUpdateConfirm() {
		return "user/user_update_confirm";
	}
	
	//회원수정 전 비밀번호 확인
	@RequestMapping(value = "/userUpdateConfirm", method = RequestMethod.POST)
	public String userUpdateConfirm(HttpSession session, Model model, ModelMap modelMap
									,@RequestParam(value="userPw") String userPw) {
		String userId = (String)session.getAttribute("id");
		if(userId.equals(userPw)) {
			model.addAttribute("user", userService.userSelectOne(userId));
			modelMap.addAttribute("message", "비밀번호 일치");
			modelMap.addAttribute("returnUrl", "userUpdate");
			return "alertAndRedirect";
		}
		else {
			modelMap.addAttribute("message", "비밀번호 확인해주세요");
			modelMap.addAttribute("returnUrl", "userUpdateConfirm");
			return "alertAndRedirect";
		}
	}
	
	//회원수정 화면
	@RequestMapping(value = "/userUpdate", method = RequestMethod.GET)
	public String userUpdate(HttpSession session, Model model) {
		String userId = (String)session.getAttribute("id");
		logger.debug(userId);
		model.addAttribute("user", userService.userSelectOne(userId));
		System.out.println("aaaaaaaaaaaaa"+userService.userSelectOne(userId));
		return "user/user_update";
	}
	
	//회원수정
	@RequestMapping(value = "/userUpdate", method = RequestMethod.POST)
	public String userUpdate(UserDto userDto) {
		userService.userUpdate(userDto);
		return "home";
	}

	//회원탈퇴
	@RequestMapping(value = "/userDelete", method = RequestMethod.GET)
	public String userDelete(HttpSession session, UserDto userDto) {
		userService.userDelete(userDto);
		String Id = (String)session.getAttribute("id");
		session.invalidate(); 
		return "redirect:/remove?Id="+Id;
	}
	
	//회원 리스트
	@RequestMapping(value = "/userSelect", method = RequestMethod.GET)
	public String userSelect(Model model,UserDto userDto) {
		List<UserDto> list = userService.userSelect(userDto);
		model.addAttribute("list",list);
		return "user/user_select";
	}
	
	//경매 정보
	@RequestMapping(value = "/userDetailAuction", method = RequestMethod.GET)
	public String userDetailAuction(HttpSession session,Model model) {
		String userId = (String)session.getAttribute("id");
		List<AuctionGoodsDto> list = auctionGoodsService.auctionGoodsSelectUser(userId);
		List<PayDto> payList = payService.paySelect(userId);
		List<AuctionGoodsDto> bidList = auctionGoodsService.auctionGoodsSelectUserBid(userId);
		List<AuctionGoodsDto> successfulBid = auctionGoodsService.auctionGoodsSelectsuccessfulBid(userId);
		
		
		model.addAttribute("bidList",bidList);
		model.addAttribute("successfulBid",successfulBid);
		model.addAttribute("list",list);
		model.addAttribute("payList",payList);
		return "user/user_detail_auction";
	}
}
