/*최상욱*/
package com.synergy.auction.pay.service;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;
import com.synergy.auction.auction.goods.service.SuccessfulBidDto;

public class PayDto {
	private int payNo;
	private String userId;
	private String userId2;
	private int cashRecordNo;
	private int successfulBidNo;
	private String payState;
	private String payBuyerCompleteDate;
	private String paySellerDeliveryDate;
	private String payBuyerReceiptConfirmDate;
	private int auctionGoodsNo;
	private AuctionGoodsDto auctionGoodsDto;
	private SuccessfulBidDto successfulBid;
	public int getPayNo() {
		return payNo;
	}
	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}
	public int getAuctionGoodsNo() {
		return auctionGoodsNo;
	}
	public void setAuctionGoodsNo(int auctionGoodsNo) {
		this.auctionGoodsNo = auctionGoodsNo;
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
	public int getCashRecordNo() {
		return cashRecordNo;
	}
	public void setCashRecordNo(int cashRecordNo) {
		this.cashRecordNo = cashRecordNo;
	}
	public int getSuccessfulBidNo() {
		return successfulBidNo;
	}
	public void setSuccessfulBidNo(int successfulBidNo) {
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
	public AuctionGoodsDto getAuctionGoodsDto() {
		return auctionGoodsDto;
	}
	public void setAuctionGoodsDto(AuctionGoodsDto auctionGoodsDto) {
		this.auctionGoodsDto = auctionGoodsDto;
	}
	public SuccessfulBidDto getSuccessfulBid() {
		return successfulBid;
	}
	public void setSuccessfulBid(SuccessfulBidDto successfulBid) {
		this.successfulBid = successfulBid;
	}
	
	
}
