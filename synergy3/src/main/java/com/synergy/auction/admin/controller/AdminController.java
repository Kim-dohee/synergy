package com.synergy.auction.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.synergy.auction.admin.service.AdminDto;
import com.synergy.auction.admin.service.AdminService;


@Controller
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/adminInsert", method = RequestMethod.GET)
	public String adminInsert() {
		return "admin/admin_insert";
	}
	
	@RequestMapping(value = "/adminInsert", method = RequestMethod.POST)
	public String adminInsert(AdminDto adminDto) {
		adminService.adminInsert(adminDto);
		return "home";
	}
}
