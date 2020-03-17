package com.sixpack.chat.admin.dao;

import java.util.List;

import com.sixpack.chat.admin.vo.ChattingListVO;
import com.sixpack.chat.content.utils.Search;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("chattingMapper")
public interface ChattingListDao {

	//채팅 내역 목록 조회
	public List<ChattingListVO> selectchattingList(Search search);
	
	//채팅 내역 목록 수
	public int selectchattingListCount(Search search);
	
	//채팅내역 상세 조회
	public ChattingListVO viewDetail(int seq);
}
