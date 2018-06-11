package com.synergy.auction.file.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

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
	public void fileInsert(MultipartFile fileName,int donationPlanNo) {
		
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
			File fileCourse = new File(SystemPath.UPLOAD_PATH+donationFileName+"."+fileExt);
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
	
	//파일넘버 검색
	public int fileNoSelect(int donationPlanNo) {
		return fileDao.fileNoSelect(donationPlanNo);
	}
	
	//이미지파일넘버 검색
	public int ImageFileNoSelect(int donationPlanNo) { 
		return fileDao.ImageFileNoSelect(donationPlanNo); 
	}
	
	//기부금 이미지 파일(이름,확장자)검색
	public List<FileDto> ImageFileSelect(FileDto fileDto) { 
		return fileDao.ImageFileSelect(fileDto); 
	}
}
