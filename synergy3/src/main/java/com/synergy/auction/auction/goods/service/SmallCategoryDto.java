/*최상욱*/
package com.synergy.auction.auction.goods.service;

public class SmallCategoryDto {
	private int smallCategoryNo;
	private int bigCategoryNo;
	private String smallCategoryName;
	
	public int getSmallCategoryNo() {
		return smallCategoryNo;
	}
	public void setSmallCategoryNo(int smallCategoryNo) {
		this.smallCategoryNo = smallCategoryNo;
	}
	public int getBigCategoryNo() {
		return bigCategoryNo;
	}
	public void setBigCategoryNo(int bigCategoryNo) {
		this.bigCategoryNo = bigCategoryNo;
	}
	public String getSmallCategoryName() {
		return smallCategoryName;
	}
	public void setSmallCategoryName(String smallCategoryName) {
		this.smallCategoryName = smallCategoryName;
	}
	
	@Override
	public String toString() {
		return "BigCategoryDto [smallCategoryNo=" + smallCategoryNo + ", bigCategoryNo=" + bigCategoryNo
				+ ", smallCategoryName=" + smallCategoryName + "]";
	}
	
	
}