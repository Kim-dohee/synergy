/*[김도희]*/
package com.synergy.auction.comment.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.cash.service.CashRecordDto;

@Repository
public class CommentDao {

	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.comment.service.CommentMapper.";

	//응원댓글 입력
	public int commentInsert(CommentDto commentDto) { 
		int row = sqlSession.insert(NS+"commentInsert", commentDto); 
		return row; 
	}
	
	//응원댓글(댓글넘버,아이디,내용,날짜) 검색
	public List<CommentDto> commentSelect() { 
		return sqlSession.selectList(NS+"commentSelect"); 		
	}
}
