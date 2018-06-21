package com.synergy.auction.cash.service;

import com.synergy.auction.pay.service.PayDto;

//캐시이력
public class CashRecordDto {

	private int cashRecordNo; //캐시이력넘버
	private String cashCategory; //캐시카테고리
	private String userId; //일반회원아이디
	private int cashRecordChange; //캐시변동
	private String cashRecordChangeDate; //캐시변동날짜
	private int cashRecordTotal; //총액
	private PayDto payDto;
	public int getCashRecordNo() {
		return cashRecordNo;
	}
	public void setCashRecordNo(int cashRecordNo) {
		this.cashRecordNo = cashRecordNo;
	}
	public String getCashCategory() {
		return cashCategory;
	}
	public void setCashCategory(String cashCategory) {
		this.cashCategory = cashCategory;
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
	public String getCashRecordChangeDate() {
		return cashRecordChangeDate;
	}
	public void setCashRecordChangeDate(String cashRecordChangeDate) {
		this.cashRecordChangeDate = cashRecordChangeDate;
	}
	public int getCashRecordTotal() {
		return cashRecordTotal;
	}
	public void setCashRecordTotal(int cashRecordTotal) {
		this.cashRecordTotal = cashRecordTotal;
	}
	public PayDto getPayDto() {
		return payDto;
	}
	public void setPayDto(PayDto payDto) {
		this.payDto = payDto;
	}
	@Override
	public String toString() {
		return "CashRecordDto [cashRecordNo=" + cashRecordNo + ", cashCategory=" + cashCategory + ", userId=" + userId
				+ ", cashRecordChange=" + cashRecordChange + ", cashRecordChangeDate=" + cashRecordChangeDate
				+ ", cashRecordTotal=" + cashRecordTotal + ", payDto=" + payDto + "]";
	}
	

	
	
	
}
