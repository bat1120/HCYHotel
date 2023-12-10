package kr.co.sist.user.join;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.user.login.LoginDAO;
import kr.co.sist.user.login.LoginVO;
import kr.co.sist.user.sjh.dao.MyBatiseHandler;

public class JoinMemberDAO {
private static JoinMemberDAO jmDAO;
	
	private JoinMemberDAO() {
	}//constructor
	
	public static JoinMemberDAO getInstance(){
		if(jmDAO==null) {
			jmDAO=new JoinMemberDAO();
		}//end if
		return jmDAO;
	}//getInstance
	
	public String selectCheckMem(CheckMemberVO cmVO) {
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		String selectCheckMem=ss.selectOne("kr.co.sist.user.sjh.joinMapper.selectCheck",cmVO);
		return selectCheckMem;
	}//selectCheckMem
	
	public String selectCheckBus(CheckMemberVO cmVO) {
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		String selectCheckBus=ss.selectOne("kr.co.sist.user.sjh.joinMapper.selectCheckBus",cmVO);
		return selectCheckBus;
	}//selectCheckBus
	
	public void insertMem(JoinMemberVO jmVO) {
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(true);
//		System.out.println("jmVO=======================" + jmVO);
		
		ss.insert("kr.co.sist.user.sjh.joinMapper.insertMem",jmVO);
	
	}//insertMem
	
	
	
	
}//class
