package com.synergy.auction.pay.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.synergy.auction.auction.goods.service.AuctionGoodsDto;

@Transactional
@Service
public class PayService {
	@Autowired
	private PayDao payDao;
	
	public int payInsert(PayDto payDto) {
		return payDao.payInsert(payDto);
	}
	
	public List<PayDto> paySelect(String userId) {
		return payDao.paySelect(userId);
	}
	
	public int payUpdateDeliver(int payNo) {
		return payDao.payUpdateDeliver(payNo);
	}
	
	public int payUpdateConfilrm(int payNo) {
		return payDao.payUpdateConfilrm(payNo);
	}
}
