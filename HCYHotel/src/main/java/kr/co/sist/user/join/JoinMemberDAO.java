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
	
	public String selectIdDup(String id) {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		String selectIdDup=ss.selectOne("kr.co.sist.user.sjh.joinMapper.selectIdDup",id);
		return selectIdDup;
	}//selectIdDup
	
	public String selectIdDupBusiness(String id) {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		String selectIdDupBusiness=ss.selectOne("kr.co.sist.user.sjh.joinMapper.selectIdDupBusiness",id);
		return selectIdDupBusiness;
	}//selectIdDupBusiness
	
	public void insertMem(JoinMemberVO jmVO) {
		System.out.println(jmVO);
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(true);
//		System.out.println("jmVO=======================" + jmVO);
		
		ss.insert("kr.co.sist.user.sjh.joinMapper.insertMem",jmVO);
	
	}//insertMem
	
	public void insertBus(JoinMemberVO jmVO) {
		
//		System.out.println(jmVO);
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(true);
//		System.out.println("jmVO=======================" + jmVO);
		
		ss.insert("kr.co.sist.user.sjh.joinMapper.insertBus",jmVO);
		
	}//insertBus
	
	
	
	
}//class
