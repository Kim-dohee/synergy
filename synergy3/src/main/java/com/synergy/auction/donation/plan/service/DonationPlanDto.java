/*[김도희]*/
package com.synergy.auction.donation.plan.service;

import com.synergy.auction.donator.service.DonatorDto;
import com.synergy.auction.file.service.FileDto;

//기부금 계획서
public class DonationPlanDto {

	private int donationPlanNo; //기부금 계획서 넘버
	private String donatorId; //기부단체아이디
	private int donationPlanFileNo; //파일 넘버
	private int donationPlanImageNo; //이미지 넘버
	private String donationPlanTitle; //제목
	private String donationPlanContent; //내용
	private String donationPlanPurpose; //목적
	private String donationPlanUseTerm; //기부금 사용기간
	private int donationPlanGoalPrice; //모집목표액
	private String donationPlanDate; //계획서등록날짜
	private FileDto file; //외래키(파일)
	private DonatorDto donatorDto; //외래키(기부자)
	
	public int getDonationPlanNo() {
		return donationPlanNo;
	}
	public void setDonationPlanNo(int donationPlanNo) {
		this.donationPlanNo = donationPlanNo;
	}
	public String getDonatorId() {
		return donatorId;
	}
	public void setDonatorId(String donatorId) {
		this.donatorId = donatorId;
	}
	public int getDonationPlanFileNo() {
		return donationPlanFileNo;
	}
	public void setDonationPlanFileNo(int donationPlanFileNo) {
		this.donationPlanFileNo = donationPlanFileNo;
	}
	public int getDonationPlanImageNo() {
		return donationPlanImageNo;
	}
	public void setDonationPlanImageNo(int donationPlanImageNo) {
		this.donationPlanImageNo = donationPlanImageNo;
	}
	public String getDonationPlanTitle() {
		return donationPlanTitle;
	}
	public void setDonationPlanTitle(String donationPlanTitle) {
		this.donationPlanTitle = donationPlanTitle;
	}
	public String getDonationPlanContent() {
		return donationPlanContent;
	}
	public void setDonationPlanContent(String donationPlanContent) {
		this.donationPlanContent = donationPlanContent;
	}
	public String getDonationPlanPurpose() {
		return donationPlanPurpose;
	}
	public void setDonationPlanPurpose(String donationPlanPurpose) {
		this.donationPlanPurpose = donationPlanPurpose;
	}
	public String getDonationPlanUseTerm() {
		return donationPlanUseTerm;
	}
	public void setDonationPlanUseTerm(String donationPlanUseTerm) {
		this.donationPlanUseTerm = donationPlanUseTerm;
	}
	public int getDonationPlanGoalPrice() {
		return donationPlanGoalPrice;
	}
	public void setDonationPlanGoalPrice(int donationPlanGoalPrice) {
		this.donationPlanGoalPrice = donationPlanGoalPrice;
	}
	public String getDonationPlanDate() {
		return donationPlanDate;
	}
	public void setDonationPlanDate(String donationPlanDate) {
		this.donationPlanDate = donationPlanDate;
	}
	public FileDto getFile() {
		return file;
	}
	public void setFile(FileDto file) {
		this.file = file;
	}
	public DonatorDto getDonatorDto() {
		return donatorDto;
	}
	public void setDonatorDto(DonatorDto donatorDto) {
		this.donatorDto = donatorDto;
	}
	
	@Override
	public String toString() {
		return "DonationPlanDto [donationPlanNo=" + donationPlanNo + ", donatorId=" + donatorId
				+ ", donationPlanFileNo=" + donationPlanFileNo + ", donationPlanImageNo=" + donationPlanImageNo
				+ ", donationPlanTitle=" + donationPlanTitle + ", donationPlanContent=" + donationPlanContent
				+ ", donationPlanPurpose=" + donationPlanPurpose + ", donationPlanUseTerm=" + donationPlanUseTerm
				+ ", donationPlanGoalPrice=" + donationPlanGoalPrice + ", donationPlanDate=" + donationPlanDate
				+ ", file=" + file + ", donatorDto=" + donatorDto + "]";
	}
	
}
