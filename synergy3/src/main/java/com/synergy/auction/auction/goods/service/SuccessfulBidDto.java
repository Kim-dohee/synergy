/*최상욱*/
package com.synergy.auction.auction.goods.service;

public class SuccessfulBidDto {
	private int successfulBidNo;
	private int bidNo;
	private String successfulBidPrice;
	private String auctionGoodsNo;
	private String successfulBidDate;
	private String successfulBidPayEndDate;
	private String successfulBidCancel;
	private String userId;
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
	public String getAuctionGoodsNo() {
		return auctionGoodsNo;
	}
	public void setAuctionGoodsNo(String auctionGoodsNo) {
		this.auctionGoodsNo = auctionGoodsNo;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "SuccessfulBidDto [successfulBidNo=" + successfulBidNo + ", bidNo=" + bidNo + ", successfulBidPrice="
				+ successfulBidPrice + ", auctionGoodsNo=" + auctionGoodsNo + ", successfulBidDate=" + successfulBidDate
				+ ", successfulBidPayEndDate=" + successfulBidPayEndDate + ", successfulBidCancel="
				+ successfulBidCancel + ", userId=" + userId + "]";
	}


	
	
}