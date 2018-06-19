/*최상욱*/
package com.synergy.auction.pay.service;

public class PayDto {
	private int payNo;
	private String userId;
	private String userId2;
	private String cashRecordNo;
	private String successfulBidNo;
	private String payState;
	private String payBuyerCompleteDate;
	private String paySellerDeliveryDate;
	private String payBuyerReceiptConfirmDate;
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
	public String getUserId2() {
		return userId2;
	}
	public void setUserId2(String userId2) {
		this.userId2 = userId2;
	}
	public String getCashRecordNo() {
		return cashRecordNo;
	}
	public void setCashRecordNo(String cashRecordNo) {
		this.cashRecordNo = cashRecordNo;
	}
	public String getSuccessfulBidNo() {
		return successfulBidNo;
	}
	public void setSuccessfulBidNo(String successfulBidNo) {
		this.successfulBidNo = successfulBidNo;
	}
	public String getPayState() {
		return payState;
	}
	public void setPayState(String payState) {
		this.payState = payState;
	}
	public String getPayBuyerCompleteDate() {
		return payBuyerCompleteDate;
	}
	public void setPayBuyerCompleteDate(String payBuyerCompleteDate) {
		this.payBuyerCompleteDate = payBuyerCompleteDate;
	}
	public String getPaySellerDeliveryDate() {
		return paySellerDeliveryDate;
	}
	public void setPaySellerDeliveryDate(String paySellerDeliveryDate) {
		this.paySellerDeliveryDate = paySellerDeliveryDate;
	}
	public String getPayBuyerReceiptConfirmDate() {
		return payBuyerReceiptConfirmDate;
	}
	public void setPayBuyerReceiptConfirmDate(String payBuyerReceiptConfirmDate) {
		this.payBuyerReceiptConfirmDate = payBuyerReceiptConfirmDate;
	}
	
	@Override
	public String toString() {
		return "PayDto [payNo=" + payNo + ", userId=" + userId + ", userId2=" + userId2 + ", cashRecordNo="
				+ cashRecordNo + ", successfulBidNo=" + successfulBidNo + ", payState=" + payState
				+ ", payBuyerCompleteDate=" + payBuyerCompleteDate + ", paySellerDeliveryDate=" + paySellerDeliveryDate
				+ ", payBuyerReceiptConfirmDate=" + payBuyerReceiptConfirmDate + "]";
	}
	
}
