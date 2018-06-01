package com.synergy.auction.remove.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.admin.service.AdminDto;
import com.synergy.auction.admin.service.AdminService;
import com.synergy.auction.remove.service.RemoveService;


@Controller
public class RemoveController {
	@Autowired
	private RemoveService removeService;
	
	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(@RequestParam(value="Id") String Id) {
		/*removeService.removeSelectOne(Id);*/
		removeService.remove(Id);
		return "admin/admin_insert";
	}

}
