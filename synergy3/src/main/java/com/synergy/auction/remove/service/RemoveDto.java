/*최상욱*/
package com.synergy.auction.remove.service;

public class RemoveDto {

	private int adminNo;
	private String adminId;
	private String adminPw;
	private String adminName;
	private int adminPhone;
	private String adminAddress;
	private String adminJoindate;
	private String adminLevel;

	public String getAdminLevel() {
		return adminLevel;
	}
	public void setAdminLevel(String adminLevel) {
		this.adminLevel = adminLevel;
	}
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPw() {
		return adminPw;
	}
	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public int getAdminPhone() {
		return adminPhone;
	}
	public void setAdminPhone(int adminPhone) {
		this.adminPhone = adminPhone;
	}
	public String getAdminAddress() {
		return adminAddress;
	}
	public void setAdminAddress(String adminAddress) {
		this.adminAddress = adminAddress;
	}
	public String getAdminJoindate() {
		return adminJoindate;
	}
	public void setAdminJoindate(String adminJoindate) {
		this.adminJoindate = adminJoindate;
	}
	
	@Override
	public String toString() {
		return "AdminDto [adminNo=" + adminNo + ", adminId=" + adminId + ", adminPw=" + adminPw + ", adminName="
				+ adminName + ", adminPhone=" + adminPhone + ", adminAddress=" + adminAddress + ", adminJoindate="
				+ adminJoindate + ", adminLevel=" + adminLevel + "]";
	}

}
