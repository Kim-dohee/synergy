/*[김도희]*/
package com.synergy.auction.comment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CommentService {

	@Autowired
	private CommentDao commentDao;
	
	//응원댓글 입력
	public int commentInsert(CommentDto commentDto) { 
		int row = commentDao.commentInsert(commentDto); 
		return row; 
	}
	
	//응원댓글(댓글넘버,아이디,내용,날짜) 검색
	public List<CommentDto> commentSelect() { 
		return commentDao.commentSelect(); 		
	}
}
