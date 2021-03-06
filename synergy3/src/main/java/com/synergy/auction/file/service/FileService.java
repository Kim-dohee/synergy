package com.synergy.auction.file.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.synergy.auction.SystemPath;
import com.synergy.auction.donation.plan.controller.DonationPlanController;

@Service
@Transactional
public class FileService {

	@Autowired
	private FileDao fileDao;
	
	private static final Logger logger = LoggerFactory.getLogger(FileService.class);
	
	//기부금 계획서 파일 등록
	public void fileInsert(MultipartFile fileName,int donationPlanNo,HttpServletRequest request) {
		String root_path = request.getSession().getServletContext().getRealPath("/");  
		String attach_path = "resources/file/";
		UUID uuid = UUID.randomUUID();
		//파일 이름
		String donationFileName = uuid.toString().replace("-","");
		int dotIndex = fileName.getOriginalFilename().lastIndexOf(".");
		//파일 확장자
		String fileExt = fileName.getOriginalFilename().substring(dotIndex+1);
		//파일 타입
		String fileType = fileName.getContentType();
		//파일 사이즈
		long fileSize = fileName.getSize();
		int newfileSize= (int)fileSize;
	
		//파일이름,타입,확장자,사이즈를 FileDto타입으로 세팅
		FileDto fileDto = new FileDto();
		fileDto.setFileName(donationFileName);
		fileDto.setFileType(fileType);
		fileDto.setFileExt(fileExt);
		fileDto.setFileSize(newfileSize);
		fileDto.setFileTableNo(donationPlanNo);
		
		//파일이 존재할경우 해당경로에 저장
		if(!fileName.isEmpty()) {
			logger.debug("FileService.fileInsert >> 파일존재");
			File fileCourse = new File(root_path+attach_path+donationFileName+"."+fileExt);
			try {
				fileName.transferTo(fileCourse);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			//파일 등록
			fileDao.fileInsert(fileDto);
		}
	}
	
	//경매품  파일 등록
	public void auctionFileInsert(MultipartFile fileName,int auctionGoodsNo,HttpServletRequest request) {
		String root_path = request.getSession().getServletContext().getRealPath("/");  
		String attach_path = "resources/file/";
		UUID uuid = UUID.randomUUID();
		//파일 이름
		String donationFileName = uuid.toString().replace("-","");
		int dotIndex = fileName.getOriginalFilename().lastIndexOf(".");
		//파일 확장자
		String fileExt = fileName.getOriginalFilename().substring(dotIndex+1);
		//파일 타입
		String fileType = fileName.getContentType();
		//파일 사이즈
		long fileSize = fileName.getSize();
		int newfileSize= (int)fileSize;
		
		//파일이름,타입,확장자,사이즈를 FileDto타입으로 세팅
		FileDto fileDto = new FileDto();
		fileDto.setFileName(donationFileName);
		fileDto.setFileType(fileType);
		fileDto.setFileExt(fileExt);
		fileDto.setFileSize(newfileSize);
		fileDto.setFileTableNo(auctionGoodsNo);
		
		//파일이 존재할경우 해당경로에 저장
		if(!fileName.isEmpty()) {
			logger.debug("FileService.fileInsert >> 파일존재");
			File fileCourse = new File(root_path+attach_path+donationFileName+"."+fileExt);
			try {
				fileName.transferTo(fileCourse);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			//파일 등록
			fileDao.auctionFileInsert(fileDto);
		}
	}
	
	//공지사항  파일 등록
	public void noticeFileInsert(MultipartFile fileName,int noticeNo,HttpServletRequest request) {
		String root_path = request.getSession().getServletContext().getRealPath("/");  
		String attach_path = "resources/file/";
		UUID uuid = UUID.randomUUID();
		//파일 이름
		String donationFileName = uuid.toString().replace("-","");
		int dotIndex = fileName.getOriginalFilename().lastIndexOf(".");
		//파일 확장자
		String fileExt = fileName.getOriginalFilename().substring(dotIndex+1);
		//파일 타입
		String fileType = fileName.getContentType();
		//파일 사이즈
		long fileSize = fileName.getSize();
		int newfileSize= (int)fileSize;
		
		//파일이름,타입,확장자,사이즈를 FileDto타입으로 세팅
		FileDto fileDto = new FileDto();
		fileDto.setFileName(donationFileName);
		fileDto.setFileType(fileType);
		fileDto.setFileExt(fileExt);
		fileDto.setFileSize(newfileSize);
		fileDto.setFileTableNo(noticeNo);
		
		//파일이 존재할경우 해당경로에 저장
		if(!fileName.isEmpty()) {
			logger.debug("FileService.fileInsert >> 파일존재");
			File fileCourse = new File(root_path+attach_path+donationFileName+"."+fileExt);
			try {
				fileName.transferTo(fileCourse);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			//파일 등록
			fileDao.noticeFileInsert(fileDto);
		}
	}
	
	//파일넘버 검색
	public int fileNoSelect(int donationPlanNo) {
		return fileDao.fileNoSelect(donationPlanNo);
	}

	//경매품파일넘버 검색
	public int auctionFileNoSelect(int auctionGoodsNo) {
		return fileDao.auctionFileNoSelect(auctionGoodsNo);
	}
	
	//경매품파일넘버 검색
	public int noticeFileNoSelect(int noticeNo) {
		return fileDao.noticeFileNoSelect(noticeNo);
	}
	
	//이미지파일넘버 검색
	public int ImageFileNoSelect(int donationPlanNo) { 
		return fileDao.ImageFileNoSelect(donationPlanNo); 
	}
	
	//기부금 이미지 파일(이름,확장자)검색
	public List<FileDto> ImageFileSelect() { 
		return fileDao.ImageFileSelect(); 
	}
	
	//기부금파일넘버를 매개변수로 받아 파일(이름,확장자)검색
	public FileDto donationPlanFileSelect(int fileNo) { 
		return fileDao.donationPlanFileSelect(fileNo); 
	}
	
	//파일테이블명(donation_spend_report)로 수정
	public int fileNameUpdate(int donationSpendReportNo) { 
		return fileDao.fileNameUpdate(donationSpendReportNo);		
	}
	
	//기부금 지출 보고서 파일넘버 검색  
	public int donationSpendReportFileNoSelect(int donationSpendReportNo) { 
		return fileDao.donationSpendReportFileNoSelect(donationSpendReportNo);
	}
	
	//파일넘버를 매개변수로 받아 파일 삭제
	public int fileDelete(int fileTableNo,String fileName,String fileExt) { 
		
		//DB 파일 삭제
		int row = fileDao.fileDelete(fileTableNo);
		//파일 삭제
		File newFile = new File(SystemPath.UPLOAD_PATH+fileName+"."+fileExt);
		if(newFile.exists()) {
			newFile.delete();
		}			
		return row;
	}
}
