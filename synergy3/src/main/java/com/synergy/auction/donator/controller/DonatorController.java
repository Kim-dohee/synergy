/*[김도희]*/
package com.synergy.auction.donator.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.synergy.auction.donator.service.DonatorDto;
import com.synergy.auction.donator.service.DonatorService;
import com.synergy.auction.user.service.UserDto;
@Controller
public class DonatorController {

	@Autowired
	private DonatorService donatorService;
	
	private static final Logger logger = LoggerFactory.getLogger(DonatorController.class);
	
	@RequestMapping(value = "/donatorInsert", method = RequestMethod.GET)
	public String donatorInsert() {
		return "donator/donator_insert";
	}
	
	/*기부단체 회원가입 화면*/
	@RequestMapping(value = "/donatorInsert", method = RequestMethod.POST)
	public String donatorInsert(DonatorDto donatorDto) {
		logger.info("DonatorController.donatorInsert toString() >>"+donatorDto.toString());
		/*회원정보 입력*/
		donatorService.donatorInsert(donatorDto);
		return "home";
	}

	@RequestMapping(value = "/donatorUpdate", method = RequestMethod.GET)
	public String donatorUpdate(HttpSession session, Model model) {
		String donatorId = (String)session.getAttribute("id");
		model.addAttribute("donator", donatorService.donatorSelectOne(donatorId));
		System.out.println("aaaaaaaaaaaaa"+donatorService.donatorSelectOne(donatorId));
		return "donator/donator_update";
	}
	
	@RequestMapping(value = "/donatorUpdate", method = RequestMethod.POST)
	public String donatorUpdate(DonatorDto donator) {
		donatorService.donatorUpdate(donator);
		return "home";
	}
}
