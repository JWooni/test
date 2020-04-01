package com.sixpack.chat.admin.service;

import java.util.List;

import com.sixpack.chat.admin.vo.ReservationListVO;
import com.sixpack.chat.content.utils.Search;

public interface ReservationListService {
	

	//컨텐츠 수정
	public void updatereservationList(ReservationListVO reservationlistvo) throws Exception;
	
	//컨텐츠 목록 조회
	public List<ReservationListVO> selectReservationList(Search search) throws Exception;
	
	//컨텐츠 목록 수
	public int selectReservationListCount(Search search) throws Exception;
	
	//컨텐츠 상세 조회
	public ReservationListVO viewDetail(int seq) throws Exception;

}
