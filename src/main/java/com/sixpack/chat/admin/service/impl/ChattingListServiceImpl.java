package com.sixpack.chat.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sixpack.chat.admin.dao.ChattingListDao;
import com.sixpack.chat.admin.service.ChattingListService;
import com.sixpack.chat.admin.vo.ChattingListVO;
import com.sixpack.chat.content.utils.Search;

@Service
public class ChattingListServiceImpl implements ChattingListService{
	
	@Autowired
	private ChattingListDao cahttingdao;

	//채팅 내역 목록 조회
	@Override
	public List<ChattingListVO> selectchatting(Search search) throws Exception {
		return cahttingdao.selectchattingList(search);
	}

	//채팅 내역 목록 수
	@Override
	public int selectchattingListCount(Search search) throws Exception {
		return cahttingdao.selectchattingListCount(search);
	}

	//채팅내역 상세 조회
	@Override
	public ChattingListVO viewDetail(int seq) throws Exception {
		return cahttingdao.viewDetail(seq);
	}

}
