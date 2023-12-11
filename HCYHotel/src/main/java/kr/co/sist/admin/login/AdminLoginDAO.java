package kr.co.sist.admin.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.co.sist.admin.dao.MyBatiseHandlerAdmin;


public class AdminLoginDAO {
//	@Autowired
//	private MyBatiseHandlerAdmin mbh;

	private static AdminLoginDAO alDAO;
	
	private AdminLoginDAO() {
	}//constructor
	
	public static AdminLoginDAO getInstance() {
		if(alDAO == null ) {alDAO = new AdminLoginDAO();}
		return alDAO;
	}//getInstance
	
	public String selectCheckLogin(LoginVO lVO) {
		MyBatiseHandlerAdmin mbh = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		String result = ss.selectOne("kr.co.sist.admin.loginMapper.selectChechLogin",lVO);
		mbh.closeHandler(ss);
		return result ;
	}//selectCheckLogin
	
	
}//class
