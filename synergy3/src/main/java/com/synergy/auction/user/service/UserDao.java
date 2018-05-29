package com.synergy.auction.user.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.user.service.UserMapper.";
	
	
	public int userInsert(UserDto userDto) { 
		int row = sqlSession.insert(NS+"userInsert", userDto); 
		return row; 
	} 
	
	public int cashRecordInsert(UserDto userDto) { 
		int row = sqlSession.insert(NS+"cashRecordInsert", userDto); 
		return row; 
	} 
	
	public String userSelectOne(String userId) { 
		return sqlSession.selectOne(NS+"userSelectOne", userId); 
	} 

}
