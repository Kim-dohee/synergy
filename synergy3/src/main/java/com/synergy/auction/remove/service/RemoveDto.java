/*최상욱*/
package com.synergy.auction.remove.service;

public class RemoveDto {
	private int removeNo;
	private String removeId;
	private int removeDate;
	public int getRemoveNo() {
		return removeNo;
	}
	public void setRemoveNo(int removeNo) {
		this.removeNo = removeNo;
	}
	public String getRemoveId() {
		return removeId;
	}
	public void setRemoveId(String removeId) {
		this.removeId = removeId;
	}
	public int getRemoveDate() {
		return removeDate;
	}
	public void setRemoveDate(int removeDate) {
		this.removeDate = removeDate;
	}
	
	@Override
	public String toString() {
		return "RemoveDto [removeNo=" + removeNo + ", removeId=" + removeId + ", removeDate=" + removeDate + "]";
	}
	
}
