package com.synergy.auction.cash.service;

//캐시이력
public class CashRecordDto {

	private int cashRecordNo; //캐시이력넘버
	private int cashCategoryNo; //캐시카테고리넘버
	private int userId; //일반회원아이디
	private int cashrecordChange; //캐시변동
	private String cashrecordChangedate; //캐시변동날짜
	private int cashrecordTotal; //총액
	
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
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getCashrecordChange() {
		return cashrecordChange;
	}
	public void setCashrecordChange(int cashrecordChange) {
		this.cashrecordChange = cashrecordChange;
	}
	public String getCashrecordChangedate() {
		return cashrecordChangedate;
	}
	public void setCashrecordChangedate(String cashrecordChangedate) {
		this.cashrecordChangedate = cashrecordChangedate;
	}
	public int getCashrecordTotal() {
		return cashrecordTotal;
	}
	public void setCashrecordTotal(int cashrecordTotal) {
		this.cashrecordTotal = cashrecordTotal;
	}
	
	@Override
	public String toString() {
		return "CashRecordDto [cashRecordNo=" + cashRecordNo + ", cashCategoryNo=" + cashCategoryNo + ", userId="
				+ userId + ", cashrecordChange=" + cashrecordChange + ", cashrecordChangedate=" + cashrecordChangedate
				+ ", cashrecordTotal=" + cashrecordTotal + "]";
	}
	
}
