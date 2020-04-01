package com.sixpack.chat.admin.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Component;

import com.ibatis.common.resources.Resources;
import com.sixpack.chat.admin.domain.EmpListDomain;

@Component
public class EmpListDao {
	
	private SqlSessionFactory ssf = null;
	
	public synchronized SqlSessionFactory getSessionFactory(){
		if (ssf == null) {
			org.apache.ibatis.logging.LogFactory.useLog4JLogging();

			Reader reader = null;
			try {
				reader = Resources.getResourceAsReader("com/sixpack/chat/admin/mapper/mybatis_config.xml");
				SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
				ssf = ssfb.build(reader);
				if (reader != null) {
					reader.close();
				} // end if
			} catch (IOException ie) {
				ie.printStackTrace();
			} // end catch
		} // end if		
		return ssf;
	} // getSessionFactory
	
	////////////////////////////////////////////////////////////////////////////////////////////////
	
	public List<EmpListDomain> selectEmpList(Map<String, Object> searchMap){
		SqlSession ss = getSessionFactory().openSession();
		List<EmpListDomain> list = ss.selectList("selectEmpList", searchMap);
		ss.close();
		
		return list;
	} //selectEmpList
	
	public int EmpListCnt(Map<String, Object> searchMap){
		SqlSession ss = getSessionFactory().openSession();
		int result = 0;
		result = ss.selectOne("selectBoard", searchMap);
		ss.close();
		
		return result;
	}
	
} // class
