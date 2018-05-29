/*최상욱*/
package com.synergy.auction.user.service;

public class UserDto {

	private int userNo;
	private String creditRightNo;
	private String userId;
	private String userPw;
	private String userName;
	private int userPhone;
	private String userEmail;
	private String userNick;
	private String userJoindate;
	
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getCreditRightNo() {
		return creditRightNo;
	}
	public void setCreditRightNo(String creditRightNo) {
		this.creditRightNo = creditRightNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(int userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	public String getUserJoindate() {
		return userJoindate;
	}
	public void setUserJoindate(String userJoindate) {
		this.userJoindate = userJoindate;
	}
	@Override
	public String toString() {
		return "UserDto [userNo=" + userNo + ", creditRightNo=" + creditRightNo + ", userId=" + userId + ", userPw="
				+ userPw + ", userName=" + userName + ", userPhone=" + userPhone + ", userEmail=" + userEmail
				+ ", userNick=" + userNick + ", userJoindate=" + userJoindate + "]";
	}
	
}
