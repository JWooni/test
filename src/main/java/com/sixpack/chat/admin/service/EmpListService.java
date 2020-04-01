package com.sixpack.chat.admin.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.sixpack.chat.admin.domain.EmpDetailDomain;
import com.sixpack.chat.admin.domain.EmpListDomain;

public interface EmpListService {

	// 조회
	public List<EmpListDomain> searchEmpList(String conId, HttpServletRequest request)throws Exception;

	// 총 개수
	public int totalCnt(HttpServletRequest request) throws Exception;
	
	// 상세페이지 조회
	public EmpDetailDomain searchEmpDetail(String id) throws Exception;
	
	// 수정
	public int modifyEmpUser(HttpServletRequest request, MultipartFile file) throws Exception;

	// 삭제
	public int delEmpUser(String empId) throws Exception;
	
	// 추가
	public int insertEmpUser(HttpServletRequest request, MultipartFile file) throws Exception;
	
	// ID중복확인
	public int idCheck(String empId) throws Exception;
	
	// File Upload
	public int saveFile(MultipartFile file, int empSeq) throws Exception;

} // EmpListService
