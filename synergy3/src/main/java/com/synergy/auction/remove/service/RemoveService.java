package com.synergy.auction.remove.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.user.service.UserDto;

@Service
public class RemoveService {
	@Autowired
	private RemoveDao removeDao;
	

	/*public UserDto userSelectOne(String userId) { 
		return removeDao.userSelectOne(userId); 
	} */
	
	public int remove(String id) { 
		int row = removeDao.remove(id); 
		return row; 
	} 
}
