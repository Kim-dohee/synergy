/*[김도희]*/
package com.synergy.auction.comment.service;

//댓글
public class CommentDto {
	
	private int commentNo; //댓글 넘버
	private int donationPlanNo; //(외래키)기부 계획서 넘버
	private String userId; //(외래키)일반회원 아이디
	private String commentContent; //댓글 내용
	private String commentDate; //댓글 등록 날짜
	
	public int getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	public int getDonationPlanNo() {
		return donationPlanNo;
	}
	public void setDonationPlanNo(int donationPlanNo) {
		this.donationPlanNo = donationPlanNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	
	@Override
	public String toString() {
		return "CommentDto [commentNo=" + commentNo + ", donationPlanNo=" + donationPlanNo + ", userId=" + userId
				+ ", commentContent=" + commentContent + ", commentDate=" + commentDate + "]";
	}
	
}
