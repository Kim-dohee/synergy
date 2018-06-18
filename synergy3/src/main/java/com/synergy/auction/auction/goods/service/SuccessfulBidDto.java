/*최상욱*/
package com.synergy.auction.auction.goods.service;

public class SuccessfulBidDto {
	private int successfulBidNo;
	private int bidNo;
	private String successfulBidPrice;
	private String successfulBidDate;
	private String successfulBidPayEndDate;
	private String successfulBidCancel;
	public int getSuccessfulBidNo() {
		return successfulBidNo;
	}
	public void setSuccessfulBidNo(int successfulBidNo) {
		this.successfulBidNo = successfulBidNo;
	}
	public int getBidNo() {
		return bidNo;
	}
	public void setBidNo(int bidNo) {
		this.bidNo = bidNo;
	}
	public String getSuccessfulBidPrice() {
		return successfulBidPrice;
	}
	public void setSuccessfulBidPrice(String successfulBidPrice) {
		this.successfulBidPrice = successfulBidPrice;
	}
	public String getSuccessfulBidDate() {
		return successfulBidDate;
	}
	public void setSuccessfulBidDate(String successfulBidDate) {
		this.successfulBidDate = successfulBidDate;
	}
	public String getSuccessfulBidPayEndDate() {
		return successfulBidPayEndDate;
	}
	public void setSuccessfulBidPayEndDate(String successfulBidPayEndDate) {
		this.successfulBidPayEndDate = successfulBidPayEndDate;
	}
	public String getSuccessfulBidCancel() {
		return successfulBidCancel;
	}
	public void setSuccessfulBidCancel(String successfulBidCancel) {
		this.successfulBidCancel = successfulBidCancel;
	}
	@Override
	public String toString() {
		return "SuccessfulBidDto [successfulBidNo=" + successfulBidNo + ", bidNo=" + bidNo + ", successfulBidPrice="
				+ successfulBidPrice + ", successfulBidDate=" + successfulBidDate + ", successfulBidPayEndDate="
				+ successfulBidPayEndDate + ", successfulBidCancel=" + successfulBidCancel + "]";
	}
	
	
	
	
}