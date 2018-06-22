package com.synergy.auction.notice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService {
	@Autowired
	private NoticeDao adminDao;
	
	public int adminInsert(NoticeDto adminDto) { 
		int row = adminDao.adminInsert(adminDto); 
		return row; 
	} 
}
