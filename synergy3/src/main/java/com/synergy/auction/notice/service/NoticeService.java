package com.synergy.auction.notice.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;
import com.synergy.auction.user.service.UserDto;

@Transactional
@Service
public class NoticeService {
	@Autowired
	private NoticeDao noticeDao;
	
	public int noticeInsert(NoticeDto noticeDto) { 
		int row = noticeDao.noticeInsert(noticeDto); 
		return row; 
	} 

	public int noticeFileNoUpdate(NoticeDto noticeDto) {
		return noticeDao.noticeFileNoUpdate(noticeDto);
		
	}
	
	//공지사항 리스트
	public Map<String, Object> noticeSelect(int currentPage) { 
		Map<String, Object> cashMap = new HashMap<String,Object>();
		int beginRow = (currentPage-1)*10;
		cashMap.put("beginRow", beginRow);	
		List<NoticeDto> list = noticeDao.noticeSelect(cashMap);
		//총 row수 구하기
		int total = noticeDao.totalNotice();
		int lastPage = 0;
		if(total%10==0) {
			lastPage = total/10;
		} else {
			lastPage = total/10+1;
		}
		Map<String, Object> map = new HashMap<String,Object>();
		
		map.put("list", list);
		map.put("lastPage",lastPage);
		return map;
	}

	//상품 상세 보기를위한 검색
	public NoticeDto noticeSelectOne(int noticeNo) { 
		return noticeDao.noticeSelectOne(noticeNo); 
	} 
	
	//조회수 증가
	public int noticeHit(int noticeNo) { 
		return noticeDao.noticeHit(noticeNo); 
	}
	
	public int noticeDelete(int noticeNo) {
		return noticeDao.noticeDelete(noticeNo);
	} 
}
