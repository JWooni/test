package com.sixpack.chat.admin.service;

import java.util.List;

import com.sixpack.chat.admin.vo.ChattingListVO;
import com.sixpack.chat.content.utils.Search;

public interface ChattingListService {

	//채팅 내역 목록 조회
	public List<ChattingListVO> selectchatting(Search search) throws Exception;
	
	//채팅 내역 목록 수
	public int selectchattingListCount(Search search) throws Exception;
	
	//채팅 내역 상세 조회
	public ChattingListVO viewDetail(int seq) throws Exception;
	
}
