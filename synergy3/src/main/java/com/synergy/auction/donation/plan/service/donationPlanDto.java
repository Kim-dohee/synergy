/*[김도희]*/
package com.synergy.auction.donation.plan.service;

//기부금 계획서
public class donationPlanDto {

	private int donationPalnNo; //기부금 계획서 넘버
	private String donatorId; //기부단체아이디
	private String donationPlanFileNo; //파일 넘버
	private String donationPalnTitle; //제목
	private String donationPalnContent; //내용
	private String donationPalnPurpose; //목적
	private String donationPalnUseTerm; //기부금 사용기간
	private int donationPalnGoalPrice; //모집목표액
	private String donationPalnDate; //계획서등록날짜
	
	public int getDonationPalnNo() {
		return donationPalnNo;
	}
	public void setDonationPalnNo(int donationPalnNo) {
		this.donationPalnNo = donationPalnNo;
	}
	public String getDonatorId() {
		return donatorId;
	}
	public void setDonatorId(String donatorId) {
		this.donatorId = donatorId;
	}
	public String getDonationPlanFileNo() {
		return donationPlanFileNo;
	}
	public void setDonationPlanFileNo(String donationPlanFileNo) {
		this.donationPlanFileNo = donationPlanFileNo;
	}
	public String getDonationPalnTitle() {
		return donationPalnTitle;
	}
	public void setDonationPalnTitle(String donationPalnTitle) {
		this.donationPalnTitle = donationPalnTitle;
	}
	public String getDonationPalnContent() {
		return donationPalnContent;
	}
	public void setDonationPalnContent(String donationPalnContent) {
		this.donationPalnContent = donationPalnContent;
	}
	public String getDonationPalnPurpose() {
		return donationPalnPurpose;
	}
	public void setDonationPalnPurpose(String donationPalnPurpose) {
		this.donationPalnPurpose = donationPalnPurpose;
	}
	public String getDonationPalnUseTerm() {
		return donationPalnUseTerm;
	}
	public void setDonationPalnUseTerm(String donationPalnUseTerm) {
		this.donationPalnUseTerm = donationPalnUseTerm;
	}
	public int getDonationPalnGoalPrice() {
		return donationPalnGoalPrice;
	}
	public void setDonationPalnGoalPrice(int donationPalnGoalPrice) {
		this.donationPalnGoalPrice = donationPalnGoalPrice;
	}
	public String getDonationPalnDate() {
		return donationPalnDate;
	}
	public void setDonationPalnDate(String donationPalnDate) {
		this.donationPalnDate = donationPalnDate;
	}
	
	@Override
	public String toString() {
		return "donationPlanDto [donationPalnNo=" + donationPalnNo + ", donatorId=" + donatorId
				+ ", donationPlanFileNo=" + donationPlanFileNo + ", donationPalnTitle=" + donationPalnTitle
				+ ", donationPalnContent=" + donationPalnContent + ", donationPalnPurpose=" + donationPalnPurpose
				+ ", donationPalnUseTerm=" + donationPalnUseTerm + ", donationPalnGoalPrice=" + donationPalnGoalPrice
				+ ", donationPalnDate=" + donationPalnDate + "]";
	}
	
}
