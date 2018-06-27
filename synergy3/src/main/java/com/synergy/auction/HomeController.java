package com.synergy.auction;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.synergy.auction.donation.plan.service.DonationPlanDto;
import com.synergy.auction.file.service.FileDto;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = {"/","home"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	//개발환경 화면
	@RequestMapping(value = "/developmentEnvironment", method = RequestMethod.GET)
	public String developmentEnvironment() {
		return "development_environment";
	}
	
	//전체기능 분석도 화면
	@RequestMapping(value = "/process", method = RequestMethod.GET)
	public String process() {
		return "process";
	}
	
	//ERD 화면
	@RequestMapping(value = "/erd", method = RequestMethod.GET)
	public String erd() {
		return "erd";
	}
	
	//주요기능 화면
	@RequestMapping(value = "/function", method = RequestMethod.GET)
	public String function() {
		return "function";
	}
	
	//관리자별 로그인 및 기능 화면
	@RequestMapping(value = "/loginRight", method = RequestMethod.GET)
	public String loginRight() {
		return "login_right";
	}
	
	//팀원소개 화면
	@RequestMapping(value = "/introduce", method = RequestMethod.GET)
	public String introduce() {
		return "introduce";
	}
	
}
