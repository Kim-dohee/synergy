package com.synergy.auction.cash.service;

//계좌
public class AccountDto {
	
	private int accountNo; //계좌 넘버
	private String userId; //일반회원 아이디
	private String accountMethod; //입금방법
	private String accountBankName; //은행명
	private int accountNumber; //계좌번호
	private String accountDepositName; //입금 예정인
	
	public int getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(int accountNo) {
		this.accountNo = accountNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAccountMethod() {
		return accountMethod;
	}
	public void setAccountMethod(String accountMethod) {
		this.accountMethod = accountMethod;
	}
	public String getAccountBankName() {
		return accountBankName;
	}
	public void setAccountBankName(String accountBankName) {
		this.accountBankName = accountBankName;
	}
	public int getAccountNumber() {
		return accountNumber;
	}
	public void setAccountNumber(int accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getAccountDepositName() {
		return accountDepositName;
	}
	public void setAccountDepositName(String accountDepositName) {
		this.accountDepositName = accountDepositName;
	}
	
	@Override
	public String toString() {
		return "AccountDto [accountNo=" + accountNo + ", userId=" + userId + ", accountMethod=" + accountMethod
				+ ", accountBankName=" + accountBankName + ", accountNumber=" + accountNumber + ", accountDepositName="
				+ accountDepositName + "]";
	}
	
}
