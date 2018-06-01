package com.synergy.auction.user.service;

import java.util.List;

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
	
	public int creditRecordInsert(String userId) { 
		int row = sqlSession.insert(NS+"creditRecordInsert", userId); 
		return row; 
	} 
	
	public UserDto userSelectOne(String userId) { 
		return sqlSession.selectOne(NS + "userSelectOne", userId); 
	} 
	
	public int userUpdate(UserDto userDto) {
		int row = sqlSession.update(NS + "userUpdate", userDto); 
		return row; 
	} 
	
	public int userDelete(UserDto userDto) {
		int row = sqlSession.update(NS + "userDelete", userDto); 
		return row; 
	} 

}
