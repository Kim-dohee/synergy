/*최상욱*/
package com.synergy.auction.auction.goods.service;

public class SuccessfulBidDto {
	private int successful_bid_no;
	private int bid_no;
	private String successful_bid_price;
	private String successful_bid_date;
	private String successful_bid_pay_end_date;
	private String successful_bid_cancel;
	
	public int getSuccessful_bid_no() {
		return successful_bid_no;
	}
	public void setSuccessful_bid_no(int successful_bid_no) {
		this.successful_bid_no = successful_bid_no;
	}
	public int getBid_no() {
		return bid_no;
	}
	public void setBid_no(int bid_no) {
		this.bid_no = bid_no;
	}
	public String getSuccessful_bid_price() {
		return successful_bid_price;
	}
	public void setSuccessful_bid_price(String successful_bid_price) {
		this.successful_bid_price = successful_bid_price;
	}
	public String getSuccessful_bid_date() {
		return successful_bid_date;
	}
	public void setSuccessful_bid_date(String successful_bid_date) {
		this.successful_bid_date = successful_bid_date;
	}
	public String getSuccessful_bid_pay_end_date() {
		return successful_bid_pay_end_date;
	}
	public void setSuccessful_bid_pay_end_date(String successful_bid_pay_end_date) {
		this.successful_bid_pay_end_date = successful_bid_pay_end_date;
	}
	public String getSuccessful_bid_cancel() {
		return successful_bid_cancel;
	}
	public void setSuccessful_bid_cancel(String successful_bid_cancel) {
		this.successful_bid_cancel = successful_bid_cancel;
	}
	
	@Override
	public String toString() {
		return "SuccessfulBidDto [successful_bid_no=" + successful_bid_no + ", bid_no=" + bid_no
				+ ", successful_bid_price=" + successful_bid_price + ", successful_bid_date=" + successful_bid_date
				+ ", successful_bid_pay_end_date=" + successful_bid_pay_end_date + ", successful_bid_cancel="
				+ successful_bid_cancel + "]";
	}
	
}