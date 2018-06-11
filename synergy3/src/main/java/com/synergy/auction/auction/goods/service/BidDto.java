/*최상욱*/
package com.synergy.auction.auction.goods.service;

public class BidDto {
	private int bidNo;
	private String userId;
	private int auctionGoodsNo;
	private int bidPrice;
	private String bidDate;
	
	public int getBidNo() {
		return bidNo;
	}
	public void setBidNo(int bidNo) {
		this.bidNo = bidNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getAuctionGoodsNo() {
		return auctionGoodsNo;
	}
	public void setAuctionGoodsNo(int auctionGoodsNo) {
		this.auctionGoodsNo = auctionGoodsNo;
	}
	public int getBidPrice() {
		return bidPrice;
	}
	public void setBidPrice(int bidPrice) {
		this.bidPrice = bidPrice;
	}
	public String getBidDate() {
		return bidDate;
	}
	public void setBidDate(String bidDate) {
		this.bidDate = bidDate;
	}
	
	@Override
	public String toString() {
		return "BidDto [bidNo=" + bidNo + ", userId=" + userId + ", auctionGoodsNo=" + auctionGoodsNo + ", bidPrice="
				+ bidPrice + ", bidDate=" + bidDate + "]";
	}
	
	
}