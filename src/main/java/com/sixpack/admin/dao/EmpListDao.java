package com.sixpack.admin.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Component;

import com.ibatis.common.resources.Resources;
import com.sixpack.admin.domain.EmpListDomain;
import com.sixpack.admin.vo.ListVO;

@Component
public class EmpListDao {
	
	private SqlSessionFactory ssf = null;
	
	public synchronized SqlSessionFactory getSessionFactory(){
		if (ssf == null) {
			org.apache.ibatis.logging.LogFactory.useLog4JLogging();

			Reader reader = null;
			try {
				reader = Resources.getResourceAsReader("com/sixpack/admin/mapper/mybatis_config.xml");
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
	
} // class
