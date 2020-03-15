package com.sixpack.chat.admin.service;

import java.util.Map;

import com.sixpack.chat.admin.vo.AdminVO;

public interface AdminService {

	AdminVO selectAdmin(Map<String, String> map) throws Exception;

}
