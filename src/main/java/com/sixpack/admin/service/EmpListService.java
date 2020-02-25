package com.sixpack.admin.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sixpack.admin.dao.EmpListDao;
import com.sixpack.admin.domain.EmpListDomain;
import com.sixpack.admin.vo.ListVO;

@Component
public class EmpListService {
	@Autowired
	private EmpListDao el_dao;
	
} // class
