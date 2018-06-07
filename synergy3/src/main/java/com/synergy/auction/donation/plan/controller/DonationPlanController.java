/*[김도희]*/
package com.synergy.auction.donation.plan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DonationPlanController {

	@RequestMapping(value = "/donationPlanMain", method = RequestMethod.GET)
	public String donationPlanAgreement() {
		return "donation/donation_plan_agreement";
	}
	
	@RequestMapping(value = "/donationPlanInsert", method = RequestMethod.POST)
	public String donationPlanInsert() {
		return "donation/donation_plan_insert";
	}
}
