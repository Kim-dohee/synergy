package com.synergy.auction.file.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Service
@Transactional
public class FileService {

	@Autowired
	private FileDao fileDao;
	
	//기부금 계획서 파일 등록
	public void fileInsert(MultipartFile fileName) {
		
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
		
		//파일 등록
		fileDao.fileInsert(fileDto);
	}
}
