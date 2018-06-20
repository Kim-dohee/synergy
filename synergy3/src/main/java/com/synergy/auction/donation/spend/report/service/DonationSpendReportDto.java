/*[김도희]*/
package com.synergy.auction.donation.spend.report.service;

import com.synergy.auction.donator.service.DonatorDto;
import com.synergy.auction.income.donation.service.IncomeDonationDto;

//기부금 지출 보고서
public class DonationSpendReportDto {

	private int donationSpendReportNo; //기부금 지출보고서넘버 
	private String donatorId; //아이디
	private int donationPlanNo; //기부금 계획서 넘버
	private int donationReportFileNo; //파일 넘버
	private int incomeDonationNo; //수입기부금넘버
	private String donationSpendReportTitle; //제목
	private String donationSpendReportContent; //내용
	private String donationSpendPriceDate; //기부금 사용날짜
	private String donationSpendReportRecord; //기부내역
	private String donationSpendReportDate; //보고서등록날짜
	private DonatorDto donatorDto; //외래키(기부자)
	
	public int getDonationSpendReportNo() {
		return donationSpendReportNo;
	}
	public void setDonationSpendReportNo(int donationSpendReportNo) {
		this.donationSpendReportNo = donationSpendReportNo;
	}
	public String getDonatorId() {
		return donatorId;
	}
	public void setDonatorId(String donatorId) {
		this.donatorId = donatorId;
	}
	public int getDonationPlanNo() {
		return donationPlanNo;
	}
	public void setDonationPlanNo(int donationPlanNo) {
		this.donationPlanNo = donationPlanNo;
	}
	public int getDonationReportFileNo() {
		return donationReportFileNo;
	}
	public void setDonationReportFileNo(int donationReportFileNo) {
		this.donationReportFileNo = donationReportFileNo;
	}
	public int getIncomeDonationNo() {
		return incomeDonationNo;
	}
	public void setIncomeDonationNo(int incomeDonationNo) {
		this.incomeDonationNo = incomeDonationNo;
	}
	public String getDonationSpendReportTitle() {
		return donationSpendReportTitle;
	}
	public void setDonationSpendReportTitle(String donationSpendReportTitle) {
		this.donationSpendReportTitle = donationSpendReportTitle;
	}
	public String getDonationSpendReportContent() {
		return donationSpendReportContent;
	}
	public void setDonationSpendReportContent(String donationSpendReportContent) {
		this.donationSpendReportContent = donationSpendReportContent;
	}
	public String getDonationSpendPriceDate() {
		return donationSpendPriceDate;
	}
	public void setDonationSpendPriceDate(String donationSpendPriceDate) {
		this.donationSpendPriceDate = donationSpendPriceDate;
	}
	public String getDonationSpendReportRecord() {
		return donationSpendReportRecord;
	}
	public void setDonationSpendReportRecord(String donationSpendReportRecord) {
		this.donationSpendReportRecord = donationSpendReportRecord;
	}
	public String getDonationSpendReportDate() {
		return donationSpendReportDate;
	}
	public void setDonationSpendReportDate(String donationSpendReportDate) {
		this.donationSpendReportDate = donationSpendReportDate;
	}
	public DonatorDto getDonatorDto() {
		return donatorDto;
	}
	public void setDonatorDto(DonatorDto donatorDto) {
		this.donatorDto = donatorDto;
	}
	
	@Override
	public String toString() {
		return "DonationSpendReportDto [donationSpendReportNo=" + donationSpendReportNo + ", donatorId=" + donatorId
				+ ", donationPlanNo=" + donationPlanNo + ", donationReportFileNo=" + donationReportFileNo
				+ ", incomeDonationNo=" + incomeDonationNo + ", donationSpendReportTitle=" + donationSpendReportTitle
				+ ", donationSpendReportContent=" + donationSpendReportContent + ", donationSpendPriceDate="
				+ donationSpendPriceDate + ", donationSpendReportRecord=" + donationSpendReportRecord
				+ ", donationSpendReportDate=" + donationSpendReportDate + ", donatorDto=" + donatorDto + "]";
	}
	
}
