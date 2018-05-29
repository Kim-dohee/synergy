/*[김도희]*/
package com.synergy.auction.donator.service;

/*기부단체*/
public class DonatorDto {

	private int donatorNo; //기부단체넘버
	private String donatorId; //아이디
	private String donatorPw; //비밀번호
	private int donatorBusinessNo; //사업자등록번호
	private String donatorName; //기부단체명
	private int donatorTelephone; //전화번호
	private String donatorHomepage; //홈페이지
	private String donatorJoinDate; //가입날짜
	
	public int getDonatorNo() {
		return donatorNo;
	}
	public void setDonatorNo(int donatorNo) {
		this.donatorNo = donatorNo;
	}
	public String getDonatorId() {
		return donatorId;
	}
	public void setDonatorId(String donatorId) {
		this.donatorId = donatorId;
	}
	public String getDonatorPw() {
		return donatorPw;
	}
	public void setDonatorPw(String donatorPw) {
		this.donatorPw = donatorPw;
	}
	public int getDonatorBusinessNo() {
		return donatorBusinessNo;
	}
	public void setDonatorBusinessNo(int donatorBusinessNo) {
		this.donatorBusinessNo = donatorBusinessNo;
	}
	public String getDonatorName() {
		return donatorName;
	}
	public void setDonatorName(String donatorName) {
		this.donatorName = donatorName;
	}
	public int getDonatorTelephone() {
		return donatorTelephone;
	}
	public void setDonatorTelephone(int donatorTelephone) {
		this.donatorTelephone = donatorTelephone;
	}
	public String getDonatorHomepage() {
		return donatorHomepage;
	}
	public void setDonatorHomepage(String donatorHomepage) {
		this.donatorHomepage = donatorHomepage;
	}
	public String getDonatorJoinDate() {
		return donatorJoinDate;
	}
	public void setDonatorJoinDate(String donatorJoinDate) {
		this.donatorJoinDate = donatorJoinDate;
	}
	
	@Override
	public String toString() {
		return "DonatorDto [donatorNo=" + donatorNo + ", donatorId=" + donatorId + ", donatorPw=" + donatorPw
				+ ", donatorBusinessNo=" + donatorBusinessNo + ", donatorName=" + donatorName + ", donatorTelephone="
				+ donatorTelephone + ", donatorHomepage=" + donatorHomepage + ", donatorJoinDate=" + donatorJoinDate
				+ "]";
	}
}
