package com.synergy.auction.auction.goods.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.synergy.auction.cash.service.CashRecordDto;

@Repository
public class AuctionGoodsDao {
	@Autowired 
	private SqlSessionTemplate sqlSession;
	final String NS = "com.synergy.auction.auction.goods.service.AuctionGoodsMapper.";
	

}
