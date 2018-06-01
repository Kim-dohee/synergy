package com.synergy.auction.cash.service;

//캐시이력
public class CashRecordDto {

	private int cashRecordNo; //캐시이력넘버
	private int cashCategoryNo; //캐시카테고리넘버
	private String userId; //일반회원아이디
	private int cashRecordChange; //캐시변동
	private String cashRecordChangedate; //캐시변동날짜
	private int cashRecordTotal; //총액
	
	public int getCashRecordNo() {
		return cashRecordNo;
	}
	public void setCashRecordNo(int cashRecordNo) {
		this.cashRecordNo = cashRecordNo;
	}
	public int getCashCategoryNo() {
		return cashCategoryNo;
	}
	public void setCashCategoryNo(int cashCategoryNo) {
		this.cashCategoryNo = cashCategoryNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getCashRecordChange() {
		return cashRecordChange;
	}
	public void setCashRecordChange(int cashRecordChange) {
		this.cashRecordChange = cashRecordChange;
	}
	public String getCashRecordChangedate() {
		return cashRecordChangedate;
	}
	public void setCashRecordChangedate(String cashRecordChangedate) {
		this.cashRecordChangedate = cashRecordChangedate;
	}
	public int getCashRecordTotal() {
		return cashRecordTotal;
	}
	public void setCashRecordTotal(int cashRecordTotal) {
		this.cashRecordTotal = cashRecordTotal;
	}
	
	@Override
	public String toString() {
		return "CashRecordDto [cashRecordNo=" + cashRecordNo + ", cashCategoryNo=" + cashCategoryNo + ", userId="
				+ userId + ", cashRecordChange=" + cashRecordChange + ", cashRecordChangedate=" + cashRecordChangedate
				+ ", cashRecordTotal=" + cashRecordTotal + "]";
	}
		
}
