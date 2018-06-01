package com.synergy.auction.user.controller;



import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.cash.service.CashRecordService;
import com.synergy.auction.user.service.UserDto;
import com.synergy.auction.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private CashRecordService cashRecordService;

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	//회원가입 화면
	@RequestMapping(value = "/userInsert", method = RequestMethod.GET)
	public String userInsert() {
		return "user/user_insert";
	}

	//회원가입 처리
	@RequestMapping(value = "/userInsert", method = RequestMethod.POST)
	public String userInsert(UserDto userDto
			 				,@RequestParam(value="userId") String userId) {
		userService.userInsert(userDto);
		return "redirect:/creditRecordInsert?userId="+userId;
	}

	//회원가입할때 만든 id로 no값을구해서 신용점수,캐쉬 초기화 
		@RequestMapping(value = "/creditRecordInsert", method = RequestMethod.GET)
		public String creditCashInsert(Model model, UserDto userDto
								,@RequestParam(value="userId") String userId) {
			logger.debug("UserController.creditCashInsert id>>"+userService.userSelectOne(userId));
			//신용점수 80점으로 초기화
			userService.creditRecordInsert(userId);
			//캐쉬 0원으로 초기화
			cashRecordService.cashRecordTotalInsert(userId);
			return "home";
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
		System.out.println("aaaaaaaaaaaaa"+userDto);
		userService.userDelete(userDto);
		String Id = (String)session.getAttribute("id");
		session.invalidate(); 
		return "redirect:/remove?Id="+Id;
	}
}
