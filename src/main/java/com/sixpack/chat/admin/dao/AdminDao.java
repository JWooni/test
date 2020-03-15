package com.sixpack.chat.admin.dao;

import java.util.Map;

import com.sixpack.chat.admin.vo.AdminVO;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("adminMapper")
public interface AdminDao {
	
	//컨텐츠 등록
	public AdminVO selectAdmin(Map<String, String> map);
}
