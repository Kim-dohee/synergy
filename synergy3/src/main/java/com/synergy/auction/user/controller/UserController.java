package com.synergy.auction.user.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.user.service.UserDto;
import com.synergy.auction.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@RequestMapping(value = "/userInsert", method = RequestMethod.GET)
	public String userInsert() {
		return "user/user_insert";
	}
	
	@RequestMapping(value = "/userInsert", method = RequestMethod.POST)
	public String userInsert(UserDto userDto
							,@RequestParam(value="userId") String userId) {
		userService.userInsert(userDto);
		String list = userService.userSelectOne(userId);
		System.out.println(list+"asdsadsadsa");
		/*userService.cashRecordInsert(userService.userSelectOne(userId));*/
		return "home";
	}
}
