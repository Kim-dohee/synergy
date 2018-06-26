/*[김도희]*/
package com.synergy.auction.comment.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.synergy.auction.cash.controller.CashController;
import com.synergy.auction.comment.service.CommentDto;
import com.synergy.auction.comment.service.CommentService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	private static final Logger logger = LoggerFactory.getLogger(CommentController.class);
	
	//응원댓글 입력
	@RequestMapping(value = "/commentInsert", method = RequestMethod.POST)
	public String commentInsert(HttpSession session
								,@RequestParam(value="commentContent") String commentContent
								,@RequestParam(value="donationPlanNo") int donationPlanNo
								,CommentDto commentDto) {
		
		String userId = (String) session.getAttribute("id");
		logger.debug("CommentController.commentInsert commentContent>>"+commentContent);
		logger.debug("CommentController.commentInsert donationPlanNo>>"+donationPlanNo);
		commentDto.setUserId(userId);
		commentDto.setCommentContent(commentContent);
		commentService.commentInsert(commentDto);
		return "donation/donation_select_detail";
	}
	
}
