package com.sixpack.chat.admin.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Component;

import com.ibatis.common.resources.Resources;
import com.sixpack.chat.admin.domain.EmpDetailDomain;
import com.sixpack.chat.admin.vo.EmpUserVO;
import com.sixpack.chat.admin.vo.FileVO;

@Component
public class EmpDetailDao {
	
	private SqlSessionFactory ssf = null;
	SqlSession ss = getSessionFactory().openSession();
	
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

	
	public EmpDetailDomain selectEmpDetail(String id){
		SqlSession ss = getSessionFactory().openSession();
		EmpDetailDomain list = ss.selectOne("selectEmpDetail", id);
		
		ss.close();
		return list;
	} //selectEmpDetail

	public int updateEmpUser(EmpUserVO euvo){
		int cnt = 0;
		SqlSession ss = getSessionFactory().openSession();
		cnt = ss.update("updateEmpUser", euvo);

		if(cnt > 0){
			ss.commit();
		} // end if
		
		return cnt;
	}// updateEmpUser
	
	public int deleteEmpUser(String empId){
		int cnt = 0;
		SqlSession ss = getSessionFactory().openSession();
		cnt = ss.delete("deleteEmpUser", empId);

		if(cnt != 0){
			cnt = 1;
			ss.commit();
		} // end if
		
		return cnt;
	} //deleteEmpUser
	
	public int insertEmpUser(EmpUserVO euvo){
		int cnt = 0;
		SqlSession ss = getSessionFactory().openSession();
		cnt = ss.insert("insertEmpUser", euvo);
		if(cnt > 0){
			ss.commit();
		} // end if
		return cnt;
	} // end insertEmpUser
	
	public int idCheck(EmpUserVO euvo){
		int result = 0;
		SqlSession ss = getSessionFactory().openSession();
		result = ss.selectOne("idCheck", euvo);
		ss.close();
		
		return result;
	}// idCheck
	

	public int uploadFile(FileVO fVO){
		SqlSession ss = getSessionFactory().openSession();
		int result = 0;
		result = ss.insert("insertFile", fVO);
		if(result > 0){
			ss.commit();
		} // end if
		return result;
	} // uploadFile
	
/*	
	public int selecetFile(int empSeq){
		SqlSession ss = getSessionFactory().openSession();
		int result = 0;
		result = ss.selectOne("selectFile", empSeq);		
		return result;	
	} //selecetFile
	*/
} // class
