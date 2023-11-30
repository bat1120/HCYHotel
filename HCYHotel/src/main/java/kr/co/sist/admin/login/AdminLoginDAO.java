package kr.co.sist.admin.login;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.dao.MyBatiseHandler;

public class AdminLoginDAO {

	private static AdminLoginDAO alDAO;
	
	private AdminLoginDAO() {
	}//constructor
	
	public static AdminLoginDAO getInstance() {
		if(alDAO == null ) {alDAO = new AdminLoginDAO();}
		return alDAO;
	}//getInstance
	
	public String selectCheckLogin(LoginVO lVO) {
		MyBatiseHandler mbh = MyBatiseHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(false);
		
		return "" ;
	}//selectCheckLogin
	
}//class
