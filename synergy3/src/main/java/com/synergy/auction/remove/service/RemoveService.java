package com.synergy.auction.remove.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.user.service.UserDto;

@Service
public class RemoveService {
	@Autowired
	private RemoveDao removeDao;
	
	public int removeInsert(String id) { 
		int row = removeDao.removeInsert(id); 
		return row; 
	} 
}
