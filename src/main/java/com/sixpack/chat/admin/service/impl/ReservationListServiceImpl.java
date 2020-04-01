package com.sixpack.chat.admin.service.impl;

import com.sixpack.chat.admin.service.ReservationListService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sixpack.chat.admin.dao.ReservationListDao;
import com.sixpack.chat.admin.service.ReservationListService;
import com.sixpack.chat.admin.vo.ReservationListVO;
import com.sixpack.chat.content.utils.Search;

@Service
public class ReservationListServiceImpl implements ReservationListService {
	
	@Autowired
	private ReservationListDao reservationlistdao;

	@Override
	public void updatereservationList(ReservationListVO reservationlistvo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ReservationListVO> selectReservationList(Search search) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectReservationListCount(Search search) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ReservationListVO viewDetail(int seq) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


}
