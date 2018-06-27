/*최상욱*/
package com.synergy.auction.notice.service;

import com.synergy.auction.file.service.FileDto;

public class NoticeDto {
	private int noticeNo;
	private String adminId;
	private int noticeFileNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeDate;
	private int noticeHits;
	private FileDto file;
	
	public FileDto getFile() {
		return file;
	}
	public void setFile(FileDto file) {
		this.file = file;
	}
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public int getNoticeFileNo() {
		return noticeFileNo;
	}
	public void setNoticeFileNo(int noticeFileNo) {
		this.noticeFileNo = noticeFileNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeDate() {
		return noticeDate;
	}
	public void setNoticeDate(String noticeDate) {
		this.noticeDate = noticeDate;
	}
	public int getNoticeHits() {
		return noticeHits;
	}
	public void setNoticeHits(int noticeHits) {
		this.noticeHits = noticeHits;
	}
	
	@Override
	public String toString() {
		return "NoticeDto [noticeNo=" + noticeNo + ", adminId=" + adminId + ", noticeFileNo=" + noticeFileNo
				+ ", noticeTitle=" + noticeTitle + ", noticeContent=" + noticeContent + ", noticeDate=" + noticeDate
				+ ", noticeHits=" + noticeHits + "]";
	}
	
}
