package com.synergy.auction.file.service;

//파일
public class FileDto {

	private int fileNo; //파일 넘버
	private int fileTableNo; //파일 외래키
	private String fileTableName; //테이블 이름
	private String fileName; //파일 이름
	private String fileType; //파일 타입
	private String fileExt; //파일 확장자
	private int fileSize; //파일 사이즈
	private String fileDate; //파일 날짜
	
	public int getFileNo() {
		return fileNo;
	}
	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}
	public int getFileTableNo() {
		return fileTableNo;
	}
	public void setFileTableNo(int fileTableNo) {
		this.fileTableNo = fileTableNo;
	}
	public String getFileTableName() {
		return fileTableName;
	}
	public void setFileTableName(String fileTableName) {
		this.fileTableName = fileTableName;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getFileExt() {
		return fileExt;
	}
	public void setFileExt(String fileExt) {
		this.fileExt = fileExt;
	}
	public int getFileSize() {
		return fileSize;
	}
	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}
	public String getFileDate() {
		return fileDate;
	}
	public void setFileDate(String fileDate) {
		this.fileDate = fileDate;
	}
	
	@Override
	public String toString() {
		return "FileDto [fileNo=" + fileNo + ", fileTableNo=" + fileTableNo + ", fileTableName=" + fileTableName
				+ ", fileName=" + fileName + ", fileType=" + fileType + ", fileExt=" + fileExt + ", fileSize="
				+ fileSize + ", fileDate=" + fileDate + "]";
	}
		
}
