package kr.co.sist.user.login;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.user.sjh.dao.MyBatiseHandler;

public class LoginDAO {
	private static LoginDAO lDAO;
	
	private LoginDAO() {
	}//constructor
	
	public static LoginDAO getInstance(){
		if(lDAO==null) {
			lDAO=new LoginDAO();
		}//end if
		return lDAO;
	}//getInstance
	
	public String selectCheckLogin(LoginVO lVO) {
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		String selectCheckLogin=ss.selectOne("kr.co.sist.user.sjh.loginMapper.selectLogin",lVO);
		return selectCheckLogin;
	}//selectCheckLogin
	
}//class
