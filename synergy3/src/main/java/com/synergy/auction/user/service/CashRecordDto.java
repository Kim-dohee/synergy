/*최상욱*/
package com.synergy.auction.user.service;

public class CashRecordDto {

	private int cashRecordNo;
	private int cashCategoryNo;
	private int userNo;
	private int cashrecordChange;
	private String cashrecordChangedate;
	private int cashrecordTotal;
	
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
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
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
		return "CashRecordDto [cashRecordNo=" + cashRecordNo + ", cashCategoryNo=" + cashCategoryNo + ", userNo="
				+ userNo + ", cashrecordChange=" + cashrecordChange + ", cashrecordChangedate=" + cashrecordChangedate
				+ ", cashrecordTotal=" + cashrecordTotal + "]";
	}
	
}