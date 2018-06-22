package com.synergy.auction.notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.synergy.auction.admin.service.AdminDto;
import com.synergy.auction.admin.service.AdminService;
import com.synergy.auction.notice.service.NoticeService;


@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value = "/noticeSelect", method = RequestMethod.GET)
	public String noticeSelect() {
		return "notice/notice_select";
	}
	
	@RequestMapping(value = "/noticeInsert", method = RequestMethod.GET)
	public String noticeInsert() {
		return "notice/notice_insert";
	}
}
