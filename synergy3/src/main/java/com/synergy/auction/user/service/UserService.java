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
	public int creditRecordInsert(String userId) { 
		int row = userDao.creditRecordInsert(userId); 
		return row; 
	} 

	public UserDto userSelectOne(String userId) { 
		return userDao.userSelectOne(userId); 
	} 

	public int userUpdate(UserDto userDto) {
		int row = userDao.userUpdate(userDto);
		return row;
	} 

	public int userDelete(UserDto userDto) {
		int row = userDao.userDelete(userDto);
		return row;
	} 

}
