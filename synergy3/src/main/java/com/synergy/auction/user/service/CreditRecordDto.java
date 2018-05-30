/*최상욱*/
package com.synergy.auction.user.service;

public class CreditRecordDto {

	private int creditRecordNo;
	private int creditCategoryNo;
	private int userNo;
	private String creditRecordChangeDate;
	private int creditRecordNowScore;
	public int getCreditRecordNo() {
		return creditRecordNo;
	}
	public void setCreditRecordNo(int creditRecordNo) {
		this.creditRecordNo = creditRecordNo;
	}
	public int getCreditCategoryNo() {
		return creditCategoryNo;
	}
	public void setCreditCategoryNo(int creditCategoryNo) {
		this.creditCategoryNo = creditCategoryNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getCreditRecordChangeDate() {
		return creditRecordChangeDate;
	}
	public void setCreditRecordChangeDate(String creditRecordChangeDate) {
		this.creditRecordChangeDate = creditRecordChangeDate;
	}
	public int getCreditRecordNowScore() {
		return creditRecordNowScore;
	}
	public void setCreditRecordNowScore(int creditRecordNowScore) {
		this.creditRecordNowScore = creditRecordNowScore;
	}
	
	@Override
	public String toString() {
		return "CreditRecordDto [creditRecordNo=" + creditRecordNo + ", creditCategoryNo=" + creditCategoryNo
				+ ", userNo=" + userNo + ", creditRecordChangeDate=" + creditRecordChangeDate
				+ ", creditRecordNowScore=" + creditRecordNowScore + "]";
	}
}