package com.synergy.auction.notice.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.synergy.auction.admin.service.AdminDto;
import com.synergy.auction.admin.service.AdminService;
import com.synergy.auction.auction.goods.service.AuctionGoodsDto;
import com.synergy.auction.file.service.FileService;
import com.synergy.auction.notice.service.NoticeDto;
import com.synergy.auction.notice.service.NoticeService;


@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private FileService fileService;
	
	@RequestMapping(value = "/noticeInsert", method = RequestMethod.GET)
	public String noticeInsert() {
		return "notice/notice_insert";
	}
	
	//공지사항 추가 (이미지파일 등록)
	@RequestMapping(value = "/noticeInsert", method = RequestMethod.POST)
	public String noticeInsert(NoticeDto noticeDto
								,@RequestParam(value="fileImage") MultipartFile fileImage
								,HttpServletRequest request) {
		int noticeNo = noticeService.noticeInsert(noticeDto);
		if(fileImage.isEmpty()==false) {
			fileService.noticeFileInsert(fileImage,noticeNo,request);
			int noticeFileNo = fileService.noticeFileNoSelect(noticeNo);
			noticeDto.setNoticeFileNo(noticeFileNo);
			noticeService.noticeFileNoUpdate(noticeDto);
		}
		return "redirect:/noticeSelect";
	}
	

	//공지사항 리스트
	@RequestMapping(value = "/noticeSelect", method = RequestMethod.GET)
	public String noticeSelect(Model model
									,@RequestParam(value="currentPage",defaultValue="1") int currentPage) {
		
		Map<String, Object> map = noticeService.noticeSelect(currentPage);
		System.out.println("1111111111111111111111111111111111111111111"+map);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("lastPage",map.get("lastPage"));
		return "notice/notice_select";
	}
	
	@RequestMapping(value = "/noticeDetail", method = RequestMethod.GET)
	public String noticeDetail(Model model
										,HttpSession session
										,@RequestParam(value="noticeNo") int noticeNo) {
		
		noticeService.noticeHit(noticeNo);
		NoticeDto detail = noticeService.noticeSelectOne(noticeNo);
		//상세 정보
		model.addAttribute("detail",detail);
		return "notice/notice_detail";
	}
	
	@RequestMapping(value = "/noticeDelete", method = RequestMethod.GET)
	public String noticeDelete(@RequestParam(value="noticeNo") int noticeNo) {
		noticeService.noticeDelete(noticeNo);
		return "redirect:/noticeSelect";
	}
}
