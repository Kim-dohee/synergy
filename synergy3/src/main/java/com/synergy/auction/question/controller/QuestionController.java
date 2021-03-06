package com.synergy.auction.question.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.synergy.auction.admin.service.AdminDto;
import com.synergy.auction.admin.service.AdminService;
import com.synergy.auction.notice.service.NoticeService;


@Controller
public class QuestionController {
	
	@RequestMapping(value = "/questionSelect", method = RequestMethod.GET)
	public String noticeSelect() {
		return "question/question_select";
	}
}
