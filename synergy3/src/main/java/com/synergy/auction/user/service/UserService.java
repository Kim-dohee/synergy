package com.synergy.auction.user.service;

import java.util.List;

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
	public int creditRecordInsert(int userNo) { 
		int row = userDao.creditRecordInsert(userNo); 
		return row; 
	} 

	public UserDto userSelectOne(String userId) { 
		return userDao.userSelectOne(userId); 
	} 
	public UserDto userSelectOne(UserDto userDto) { 
		return userDao.userSelectOne(userDto); 
	}
	public int userUpdate(UserDto userDto) {
		int row = userDao.userUpdate(userDto);
		return row;
	} 

}
