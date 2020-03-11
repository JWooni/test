package com.sixpack.chat.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sixpack.chat.admin.dao.ContentDao;
import com.sixpack.chat.admin.service.ContentService;
import com.sixpack.chat.admin.vo.ContentVO;
import com.sixpack.chat.content.utils.Search;


@Service
public class ContentServiceImpl implements ContentService{

	@Autowired
	private ContentDao contentdao;
	
	//컨텐츠 등록
	@Override
	public void insertcontent(ContentVO contentvo)throws Exception{
		System.out.println("insertcontent() service");
		contentdao.insertcontent(contentvo);
	}
	
	//컨텐츠 자세히 보기
	
	//컨텐츠 수정
	@Override
	public void updatecontent(ContentVO contentvo) throws Exception{
		contentdao.updatecontent(contentvo);
	}
	
	//컨텐츠 삭제
	@Override
	public void deletecontent(ContentVO contentvo) throws Exception{
		contentdao.deletecontent(contentvo);
	}

	//컨텐츠 목록 조회
	@Override
	public List<ContentVO> selectcontent(Search search) throws Exception {
		return contentdao.selectUserCenter(search);
	}

	//컨텐츠 목록 수
	@Override
	public int selectContentListCount(Search search) throws Exception {
		return contentdao.selectContentListCount(search);
	}

	
	//컨텐츠 상세 조회
	@Override
	public ContentVO viewDetail(int seq) throws Exception {
		return contentdao.viewDetail(seq);
	}
	
	
	
	
	
}
