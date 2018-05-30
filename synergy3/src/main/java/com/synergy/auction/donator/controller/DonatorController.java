/*[김도희]*/
package com.synergy.auction.donator.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.synergy.auction.donator.service.DonatorDto;
import com.synergy.auction.donator.service.DonatorService;
@Controller
public class DonatorController {

	@Autowired
	private DonatorService donatorService;
	private DonatorDto donatorDto;
	
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
	
	/*기부단체 회원수정 화면
	@RequestMapping(value = "/donatorSelectOne", method = RequestMethod.POST)
	public String donatorSelectOne(DonatorDto donatorDto) {
		회원정보 가져오기
		donatorService.donatorSelectOne(donatorDto);
		return "donator/donator_update.jsp";
	}*/
}
