/*최상욱*/
package com.synergy.auction.auction.goods.service;

public class AuctionGoodsDto {
	private int auctionGoodsNo;
	private String auctionGoodsFileNo;
	private String donationPalnNo;
	private String auctionStateNo;
	private String userId;
	private String smallCategoryNo;
	private String auctionGoodsMinPrice;
	private String auctionGoodsTitle;
	private String auctionGoodsContent;
	private int auctionGoodsInstanceBuyPrice;
	private String auctionGoodsName;
	private int auctionGoodsBidUnit;
	private String auctionGoodsDate;
	private String auctionGoodsBayTerm;
	private String auctionGoodsBidTerm;
	private String auctionGoodsBidStartDate;
	private String auctionGoodsBidEndDate;
	private int auctionGoodsHits;

	public int getAuctionGoodsNo() {
		return auctionGoodsNo;
	}
	public void setAuctionGoodsNo(int auctionGoodsNo) {
		this.auctionGoodsNo = auctionGoodsNo;
	}
	public String getAuctionGoodsFileNo() {
		return auctionGoodsFileNo;
	}
	public void setAuctionGoodsFileNo(String auctionGoodsFileNo) {
		this.auctionGoodsFileNo = auctionGoodsFileNo;
	}
	public String getDonationPalnNo() {
		return donationPalnNo;
	}
	public void setDonationPalnNo(String donationPalnNo) {
		this.donationPalnNo = donationPalnNo;
	}
	public String getAuctionStateNo() {
		return auctionStateNo;
	}
	public void setAuctionStateNo(String auctionStateNo) {
		this.auctionStateNo = auctionStateNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSmallCategoryNo() {
		return smallCategoryNo;
	}
	public void setSmallCategoryNo(String smallCategoryNo) {
		this.smallCategoryNo = smallCategoryNo;
	}
	public String getAuctionGoodsMinPrice() {
		return auctionGoodsMinPrice;
	}
	public void setAuctionGoodsMinPrice(String auctionGoodsMinPrice) {
		this.auctionGoodsMinPrice = auctionGoodsMinPrice;
	}
	public String getAuctionGoodsTitle() {
		return auctionGoodsTitle;
	}
	public void setAuctionGoodsTitle(String auctionGoodsTitle) {
		this.auctionGoodsTitle = auctionGoodsTitle;
	}
	public String getAuctionGoodsContent() {
		return auctionGoodsContent;
	}
	public void setAuctionGoodsContent(String auctionGoodsContent) {
		this.auctionGoodsContent = auctionGoodsContent;
	}
	public int getAuctionGoodsInstanceBuyPrice() {
		return auctionGoodsInstanceBuyPrice;
	}
	public void setAuctionGoodsInstanceBuyPrice(int auctionGoodsInstanceBuyPrice) {
		this.auctionGoodsInstanceBuyPrice = auctionGoodsInstanceBuyPrice;
	}
	public String getAuctionGoodsName() {
		return auctionGoodsName;
	}
	public void setAuctionGoodsName(String auctionGoodsName) {
		this.auctionGoodsName = auctionGoodsName;
	}
	public int getAuctionGoodsBidUnit() {
		return auctionGoodsBidUnit;
	}
	public void setAuctionGoodsBidUnit(int auctionGoodsBidUnit) {
		this.auctionGoodsBidUnit = auctionGoodsBidUnit;
	}
	public String getAuctionGoodsDate() {
		return auctionGoodsDate;
	}
	public void setAuctionGoodsDate(String auctionGoodsDate) {
		this.auctionGoodsDate = auctionGoodsDate;
	}
	public String getAuctionGoodsBayTerm() {
		return auctionGoodsBayTerm;
	}
	public void setAuctionGoodsBayTerm(String auctionGoodsBayTerm) {
		this.auctionGoodsBayTerm = auctionGoodsBayTerm;
	}
	public String getAuctionGoodsBidTerm() {
		return auctionGoodsBidTerm;
	}
	public void setAuctionGoodsBidTerm(String auctionGoodsBidTerm) {
		this.auctionGoodsBidTerm = auctionGoodsBidTerm;
	}
	public String getAuctionGoodsBidStartDate() {
		return auctionGoodsBidStartDate;
	}
	public void setAuctionGoodsBidStartDate(String auctionGoodsBidStartDate) {
		this.auctionGoodsBidStartDate = auctionGoodsBidStartDate;
	}
	public String getAuctionGoodsBidEndDate() {
		return auctionGoodsBidEndDate;
	}
	public void setAuctionGoodsBidEndDate(String auctionGoodsBidEndDate) {
		this.auctionGoodsBidEndDate = auctionGoodsBidEndDate;
	}
	public int getAuctionGoodsHits() {
		return auctionGoodsHits;
	}
	public void setAuctionGoodsHits(int auctionGoodsHits) {
		this.auctionGoodsHits = auctionGoodsHits;
	}
	
	@Override
	public String toString() {
		return "AuctionGoodsDto [auctionGoodsNo=" + auctionGoodsNo + ", auctionGoodsFileNo=" + auctionGoodsFileNo
				+ ", donationPalnNo=" + donationPalnNo + ", auctionStateNo=" + auctionStateNo + ", userId=" + userId
				+ ", smallCategoryNo=" + smallCategoryNo + ", auctionGoodsMinPrice=" + auctionGoodsMinPrice
				+ ", auctionGoodsTitle=" + auctionGoodsTitle + ", auctionGoodsContent=" + auctionGoodsContent
				+ ", auctionGoodsInstanceBuyPrice=" + auctionGoodsInstanceBuyPrice + ", auctionGoodsName="
				+ auctionGoodsName + ", auctionGoodsBidUnit=" + auctionGoodsBidUnit + ", auctionGoodsDate="
				+ auctionGoodsDate + ", auctionGoodsBayTerm=" + auctionGoodsBayTerm + ", auctionGoodsBidTerm="
				+ auctionGoodsBidTerm + ", auctionGoodsBidStartDate=" + auctionGoodsBidStartDate
				+ ", auctionGoodsBidEndDate=" + auctionGoodsBidEndDate + ", auctionGoodsHits=" + auctionGoodsHits + "]";
	}
	
	
}