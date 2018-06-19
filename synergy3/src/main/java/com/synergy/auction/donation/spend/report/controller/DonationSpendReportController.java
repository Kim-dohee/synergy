package com.synergy.auction.donation.spend.report.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.donation.spend.report.service.DonationSpendReportDto;
import com.synergy.auction.donation.spend.report.service.DonationSpendReportService;

@Controller
public class DonationSpendReportController {

	@Autowired
	private DonationSpendReportService donationSpendReportService;
	
	//기부금 지출보고서(기부단체,제목,날짜) 검색
	@RequestMapping(value = "/donationSpendReport", method = RequestMethod.GET)
	public String donationSpendReport(Model model) {
		
		List<DonationSpendReportDto> list = donationSpendReportService.donationSpendReportSelect();
		model.addAttribute("list", list);
		return "donationSpendReport/donationSpendReport_main";
	}
	
	//기부금 지출보고서() 상세 검색
	@RequestMapping(value = "/donationSpendReport", method = RequestMethod.GET)
	public String donationSpendReportSelect(Model model
											,@RequestParam(value="donationPlanNo") int donationPlanNo) {
		
		List<DonationSpendReportDto> list = donationSpendReportService.donationSpendReportSelect();
		model.addAttribute("list", list);
		return "donationSpendReport/donationSpendReport_main";
	}
}
