package com.synergy.auction.notice.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;

@Repository
public class NoticeDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.notice.service.NoticeMapper.";
	
	public int noticeInsert(NoticeDto noticeDto) { 
		int row = sqlSession.insert(NS+"noticeInsert", noticeDto); 
		return noticeDto.getNoticeNo();
	} 

	public int noticeFileNoUpdate(NoticeDto noticeDto) {
		return sqlSession.update(NS + "noticeFileNoUpdate", noticeDto); 
	}
	
	public List<NoticeDto> noticeSelect(Map<String, Object> map) { 
		return sqlSession.selectList(NS+"noticeSelect", map); 		
	}

	public int totalNotice() { 
		return sqlSession.selectOne(NS+"totalNotice"); 
	}
	
	public NoticeDto noticeSelectOne(int noticeNo) { 
		return sqlSession.selectOne(NS + "noticeSelectOne", noticeNo); 
	} 
	
	public int noticeHit(int noticeNo) { 
		return sqlSession.update(NS + "noticeHit", noticeNo); 
	}
	
	public int noticeDelete(int noticeNo) { 
		return sqlSession.delete(NS + "noticeDelete", noticeNo); 
	}

}

