package com.synergy.auction.pay.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PayService {
	@Autowired
	private PayDao payDao;
	
	public int payInsert() {
		return payDao.payInsert();
	}
}
