package com.synergy.auction.income.donation.service;

//수입 기부금
public class IncomeDonationDto {

	private int incomeDonationNo; //수입 기부금 넘버
	private int donationPlanNo; //기부금 계획서 넘버
	private int payNo; //결제넘버
	private String userId; //일반회원아이디
	private int incomeDonationPrice; //기부액
	private String incomeDonationDate; //기부 날짜
	public int getIncomeDonationNo() {
		return incomeDonationNo;
	}
	public void setIncomeDonationNo(int incomeDonationNo) {
		this.incomeDonationNo = incomeDonationNo;
	}
	public int getDonationPlanNo() {
		return donationPlanNo;
	}
	public void setDonationPlanNo(int donationPlanNo) {
		this.donationPlanNo = donationPlanNo;
	}
	public int getPayNo() {
		return payNo;
	}
	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getIncomeDonationPrice() {
		return incomeDonationPrice;
	}
	public void setIncomeDonationPrice(int incomeDonationPrice) {
		this.incomeDonationPrice = incomeDonationPrice;
	}
	public String getIncomeDonationDate() {
		return incomeDonationDate;
	}
	public void setIncomeDonationDate(String incomeDonationDate) {
		this.incomeDonationDate = incomeDonationDate;
	}
	
	@Override
	public String toString() {
		return "IncomeDonationDto [incomeDonationNo=" + incomeDonationNo + ", donationPlanNo=" + donationPlanNo
				+ ", payNo=" + payNo + ", userId=" + userId + ", incomeDonationPrice=" + incomeDonationPrice
				+ ", incomeDonationDate=" + incomeDonationDate + "]";
	}
	
}
