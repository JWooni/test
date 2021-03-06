package com.sixpack.chat.admin.service;

import java.util.List;

import com.sixpack.chat.admin.vo.ContentVO;
import com.sixpack.chat.content.utils.Search;

public interface ContentService {

	//컨텐츠 등록
	public void insertcontent(ContentVO contentvo)throws Exception;
	
	//컨텐츠 수정
	public void updatecontent(ContentVO contentvo) throws Exception;
	
	//컨텐츠 삭제
	public void deletecontent(ContentVO contentvo) throws Exception;
	
	//컨텐츠 목록 조회
	public List<ContentVO> selectcontent(Search search) throws Exception;
	
	//컨텐츠 목록 수
	public int selectContentListCount(Search search) throws Exception;
	
	//컨텐츠 상세 조회
	public ContentVO viewDetail(int seq) throws Exception;
}
