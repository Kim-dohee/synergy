package com.synergy.auction.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {
	@Autowired
	private AdminDao adminDao;
	
	public int adminInsert(AdminDto adminDto) { 
		int row = adminDao.adminInsert(adminDto); 
		return row; 
	} 
}
