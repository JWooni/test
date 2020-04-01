package com.sixpack.chat.admin.service.impl;


import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.sixpack.chat.admin.dao.EmpDetailDao;
import com.sixpack.chat.admin.dao.EmpListDao;
import com.sixpack.chat.admin.domain.EmpDetailDomain;
import com.sixpack.chat.admin.domain.EmpListDomain;
import com.sixpack.chat.admin.service.EmpListService;
import com.sixpack.chat.admin.vo.EmpUserVO;
import com.sixpack.chat.admin.vo.FileVO;

@Component
public class EmpListServiceImpl implements EmpListService {
	@Autowired
	private EmpListDao el_dao;
	@Autowired
	private EmpDetailDao ed_dao;
	
	private static final String UPLOAD_PATH = "C:\\Users\\JWKim\\Desktop\\fileupload";	
	
//	C:\\Users\\JWKim\\Desktop\\fileupload
	// 전체 조회
	@Override
	public List<EmpListDomain> searchEmpList(String conId, HttpServletRequest request) throws Exception{
		//검색 조건을 담을 맵
		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("conId", conId);	//id
		
		//페이징 관련 조건 값 셋팅
		searchMap.put("startIndex", request.getAttribute("startIndex"));	//시작
		searchMap.put("endIndex", request.getAttribute("endIndex"));		//페이지 개수
		
		//검색 조건이 존재한다면 셋 팅해준다.
		if (request.getParameter("keyword") != null && request.getParameter("keyword") != "null" && !("").equals(request.getParameter("keyword"))) {
			
			//변수
			String searchOption = request.getParameter("searchOption");	//검색어
			String keyword 		= request.getParameter("keyword");	//검색어
			
			searchMap.put("searchOption", searchOption);
			searchMap.put("keyword", keyword);
		}
		
		List<EmpListDomain> list = el_dao.selectEmpList(searchMap);
		return list;
	} //searchEmpList
	
	// 게시글 수
	@Override
	public int totalCnt(HttpServletRequest request){
		//검색 조건을 담을 맵
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		//검색 조건이 존재한다면 셋팅해준다.
		if (request.getParameter("keyword") != null && request.getParameter("keyword") != "null" && !("").equals(request.getParameter("keyword"))) {
			//변수
			String searchOption = request.getParameter("searchOption");	//검색어
			String keyword 		= request.getParameter("keyword");	//검색어
			
			searchMap.put("searchOption", searchOption);
			searchMap.put("keyword", keyword);
		}
		
		int result = 0;
		result = el_dao.EmpListCnt(searchMap);
		
		return result;
	} // totalCnt
	
	// 상세페이지
	@Override
	public EmpDetailDomain searchEmpDetail(String id){
		//EMP Detail
		EmpDetailDomain list = ed_dao.selectEmpDetail(id);
		
		//get EMP Profile Image
		
		return list;
	} //searchEmpDetail
	
	// 수정
	@Override
	public int modifyEmpUser(HttpServletRequest request, MultipartFile file) throws Exception{
		EmpUserVO euvo = new EmpUserVO();
		FileVO fvo = new FileVO();
		euvo.setEmpPwd(request.getParameter("empPwd2"));
		euvo.setEmpName(request.getParameter("empName"));
		euvo.setEmpRank(request.getParameter("empRank"));
		euvo.setEmpArea(request.getParameter("empArea"));
		euvo.setEmpId(request.getParameter("empId"));
		
		int cnt = ed_dao.updateEmpUser(euvo);
		int returnKey = euvo.getEmpSeq();
		if(cnt > 0 && !file.isEmpty()){
			cnt = saveFile(file, returnKey);
		}
		return cnt;
	} //modifyEmpUser
	
	// 삭제
	@Override
	public int delEmpUser(String empId){
		int cnt = ed_dao.deleteEmpUser(empId);
		return cnt;
	} //delEmpUser
	
	// 추가
	@Override
	public int insertEmpUser(HttpServletRequest request, MultipartFile file) throws Exception{
		EmpUserVO euvo = new EmpUserVO();
		euvo.setEmpId(request.getParameter("empId"));
		euvo.setEmpPwd(request.getParameter("empPwd"));
		euvo.setEmpName(request.getParameter("empName"));
		euvo.setEmpRank(request.getParameter("empRank"));
		euvo.setEmpArea(request.getParameter("empArea"));
		
		int cnt = ed_dao.insertEmpUser(euvo);
		int returnKey = euvo.getEmpSeq();
		
		if(cnt > 0 && !file.isEmpty()){
			cnt = saveFile(file, returnKey);
		}
		
		return cnt;
	} // insertEmpUser
	
	// 중복체크
	@Override
	public int idCheck(String empId) throws Exception{
		//vo로 값을 넘길거면 vo에 값 셋팅해서넘겨야함
		EmpUserVO euvo = new EmpUserVO();
		euvo.setEmpId(empId);
		int result = ed_dao.idCheck(euvo);
		return result;
	}//idCheck
	
	//file upload
	@Override
	public int saveFile(MultipartFile file, int empSeq) throws Exception{
	    // 파일 이름 변경
	    UUID uuid = UUID.randomUUID();
	    String saveName = uuid + "_" + file.getOriginalFilename();

	    // 저장할 File 객체를 생성(껍데기 파일)
	    File saveFile = new File(UPLOAD_PATH,saveName); // 저장할 폴더 이름, 저장할 파일 이름
	    int result = 0;
	    try {
	    	FileCopyUtils.copy(file.getBytes(),saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘
	    	FileVO fVO = new FileVO();
	    	fVO.setEmpSeq(empSeq);
	    	fVO.setFileName(saveName);
	    	fVO.setOriginalFileName(file.getOriginalFilename());
	    	fVO.setFilePath(UPLOAD_PATH);
	    	
	    	result = ed_dao.uploadFile(fVO);
	    	
	    } catch (IOException e) {
	        e.printStackTrace();
	        return result;
	    } // end catch

	    return result;
	} // end saveFile
	
} // class
