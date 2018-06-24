/*[김도희]*/
package com.synergy.auction.donation.use.service;

//기부금 사용처
public class DonationUseDto {
	
	private int donationUseNo; //기부금 사용처 넘버
	private int donationPlanNo; //기부금 계획서 넘버
	private String donationUseTarget; //사용 대상
	private String donationUse; //사용처
	private String donationUseWay; //사용 방법
	private int donationUsePrice; //사용 금액
	private String donationUseDate; //사용처 등록 날짜
	
	public int getDonationUseNo() {
		return donationUseNo;
	}
	public void setDonationUseNo(int donationUseNo) {
		this.donationUseNo = donationUseNo;
	}
	public int getDonationPlanNo() {
		return donationPlanNo;
	}
	public void setDonationPlanNo(int donationPlanNo) {
		this.donationPlanNo = donationPlanNo;
	}
	public String getDonationUseTarget() {
		return donationUseTarget;
	}
	public void setDonationUseTarget(String donationUseTarget) {
		this.donationUseTarget = donationUseTarget;
	}
	public String getDonationUse() {
		return donationUse;
	}
	public void setDonationUse(String donationUse) {
		this.donationUse = donationUse;
	}
	public String getDonationUseWay() {
		return donationUseWay;
	}
	public void setDonationUseWay(String donationUseWay) {
		this.donationUseWay = donationUseWay;
	}
	public int getDonationUsePrice() {
		return donationUsePrice;
	}
	public void setDonationUsePrice(int donationUsePrice) {
		this.donationUsePrice = donationUsePrice;
	}
	public String getDonationUseDate() {
		return donationUseDate;
	}
	public void setDonationUseDate(String donationUseDate) {
		this.donationUseDate = donationUseDate;
	}
	
	@Override
	public String toString() {
		return "DonationUseDto [donationUseNo=" + donationUseNo + ", donationPlanNo=" + donationPlanNo
				+ ", donationUseTarget=" + donationUseTarget + ", donationUse=" + donationUse + ", donationUseWay="
				+ donationUseWay + ", donationUsePrice=" + donationUsePrice + ", donationUseDate=" + donationUseDate
				+ "]";
	}
	
}
