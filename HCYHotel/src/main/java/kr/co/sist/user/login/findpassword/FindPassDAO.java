package kr.co.sist.user.login.findpassword;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.user.sjh.dao.MyBatiseHandler;

public class FindPassDAO {
	private static FindPassDAO fpDAO;
		
	private FindPassDAO() {
	}//constuctor
		
	public static FindPassDAO getInstance(){
		if(fpDAO==null) {
			fpDAO=new FindPassDAO();
		}//end if
		return fpDAO;
	}//getInstance	
	
	public String selectCheckMember(FindPassVO fpVO){
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		String selectCheckMember=ss.selectOne("kr.co.sist.user.sjh.findIdPassMapper.selectMemPassword",fpVO);
		return selectCheckMember;
	}//selectCheckMember
	
	public String selectCheckBusiness(FindPassVO fpVO){
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		String selectCheckBusiness=ss.selectOne("kr.co.sist.user.sjh.findIdPassMapper.selectBusPassword",fpVO);
		return selectCheckBusiness;
	}//selectCheckBusiness
	
	public int updatePass(ChangePassVO cpVO) {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(true);
		int cnt=ss.update("kr.co.sist.user.sjh.findIdPassMapper.updateMemPassword",cpVO);
		return cnt;
	}//updatePass
	
	public int updatePassBusiness(ChangePassVO cpVO) {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(true);
		int cnt=ss.update("kr.co.sist.user.sjh.findIdPassMapper.updateBusPassword",cpVO);
		return cnt;
	}//updatePassBusiness
}//class
