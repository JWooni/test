package com.sixpack.chat.admin.dao;

import java.util.List;

import com.sixpack.chat.admin.vo.ContentVO;
import com.sixpack.chat.content.utils.Search;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("contentMapper")
public interface ContentDao {
	
	//컨텐츠 등록
	public int insertcontent(ContentVO contentvo);
	
	//컨텐츠 수정
	public int updatecontent(ContentVO contentvo);
	
	//컨텐츠 삭제
	public int deletecontent(ContentVO contentvo);
	
	//컨텐츠 목록 조회
	public List<ContentVO> selectUserCenter(Search search);
	
	//컨텐츠 목록 수
	public int selectContentListCount(Search search);
	
	//컨텐츠 상세 조회
	public ContentVO viewDetail(int seq);
}
