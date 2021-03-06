package com.synergy.auction.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.synergy.auction.cash.service.CashRecordDto;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public int userInsert(UserDto userDto) { 
		int row = userDao.userInsert(userDto); 
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
	
	public List<UserDto> userSelect(UserDto userDto) { 
		return userDao.userSelect(userDto); 		
	}

}
