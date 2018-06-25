package com.synergy.auction.auction.goods.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Service
public class AuctionGoodsService {
	@Autowired
	private AuctionGoodsDao auctionGoodsDao;
	
	//상품 등록
	public int auctionGoodsInsert(AuctionGoodsDto auctionGoodsDto) { 
		int row = auctionGoodsDao.auctionGoodsInsert(auctionGoodsDto); 
		return row; 
	} 

	//상품 리스트
	public Map<String, Object> auctionGoodsSelect(int currentPage) { 
		Map<String, Object> cashMap = new HashMap<String,Object>();
		int beginRow = (currentPage-1)*10;
		cashMap.put("beginRow", beginRow);	
		List<AuctionGoodsDto> list = auctionGoodsDao.auctionGoodsSelect(cashMap);
		//총 row수 구하기
		int total = auctionGoodsDao.totalAuctionGoods();
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
	
	//상품 리스트
	public Map<String, Object> auctionGoodsSelectCategory(int currentPage,int category) { 
		Map<String, Object> cashMap = new HashMap<String,Object>();
		int beginRow = (currentPage-1)*10;
		cashMap.put("beginRow", beginRow);	
		cashMap.put("category", category);	
		List<AuctionGoodsDto> list = auctionGoodsDao.auctionGoodsSelectCategory(cashMap);
		//총 row수 구하기
		int total = auctionGoodsDao.totalAuctionGoodsCategory(category);
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
	
	//상품 리스트
	public Map<String, Object> auctionGoodsSelectBigCategory(int currentPage,int category) { 
		Map<String, Object> cashMap = new HashMap<String,Object>();
		int beginRow = (currentPage-1)*10;
		cashMap.put("beginRow", beginRow);	
		cashMap.put("category", category);	
		List<AuctionGoodsDto> list = auctionGoodsDao.auctionGoodsSelectBigCategory(cashMap);
		//총 row수 구하기
		int total = auctionGoodsDao.totalAuctionGoodsCategory(category);
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
	
	//개인 리스트
	public List<AuctionGoodsDto> auctionGoodsSelectUser(String UserId) { 
		return auctionGoodsDao.auctionGoodsSelectUser(UserId); 		
	}
	public List<AuctionGoodsDto> auctionGoodsSelectUserBid(String UserId) { 
		return auctionGoodsDao.auctionGoodsSelectUserBid(UserId); 		
	}
	public List<AuctionGoodsDto> auctionGoodsSelectsuccessfulBid(String UserId) { 
		return auctionGoodsDao.auctionGoodsSelectsuccessfulBid(UserId); 		
	}

	//상품 상세 보기를위한 검색
	public AuctionGoodsDto auctionGoodsSelectOne(String auctionGoodsNo) { 
		return auctionGoodsDao.auctionGoodsSelectOne(auctionGoodsNo); 
	} 
	
	//입찰 1순위 검색
	public BidDto bidSelectOne(String auctionGoodsNo) { 
		return auctionGoodsDao.bidSelectOne(auctionGoodsNo); 
	} 
	
	//조회수 증가
	public int auctionGoodsHit(String auctionGoodsNo) { 
		return auctionGoodsDao.auctionGoodsHit(auctionGoodsNo); 
	}

	//입찰이 시작되면 시작날짜, 종료날짜, 상태 변경
	public int auctionGoodsUpdate(String auctionGoodsNo) {
		return auctionGoodsDao.auctionGoodsUpdate(auctionGoodsNo);
		
	} 
	
	//결제를 하면 상태 변경
	public int auctionGoodsUpdatePay(int auctionGoodsNo) {
		return auctionGoodsDao.auctionGoodsUpdatePay(auctionGoodsNo);
		
	} 
	//기간이 지나면 상태 변경
	public int auctionGoodsUpdateState(String auctionGoodsNo) {
		return auctionGoodsDao.auctionGoodsUpdateState(auctionGoodsNo);
		
	} 
	
	public int auctionGoodsFileNoUpdate(AuctionGoodsDto auctionGoodsDto) {
		return auctionGoodsDao.auctionGoodsFileNoUpdate(auctionGoodsDto);
		
	}

	public int auctionGoodsRemove(int auctionGoodsNo) {
		return auctionGoodsDao.auctionGoodsRemove(auctionGoodsNo);
		
	} 
}
