package com.sixpack.chat.admin.service.impl;



import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sixpack.chat.admin.dao.AdminDao;
import com.sixpack.chat.admin.service.AdminService;
import com.sixpack.chat.admin.vo.AdminVO;

@Service 
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao adminDAO;
	
	@Override
	public AdminVO selectAdmin(Map<String, String> map) {
		return adminDAO.selectAdmin(map);
	}

}
