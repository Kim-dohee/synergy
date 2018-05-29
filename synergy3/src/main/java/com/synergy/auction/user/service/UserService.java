package com.synergy.auction.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public int userInsert(UserDto userDto) { 
		int row = userDao.userInsert(userDto); 
		return row; 
	} 
	
	public int cashRecordInsert(UserDto userDto) { 
		int row = userDao.cashRecordInsert(userDto); 
		return row; 
	} 
	
	public String userSelectOne(String userId) { 
		return userDao.userSelectOne(userId); 
	} 
}
