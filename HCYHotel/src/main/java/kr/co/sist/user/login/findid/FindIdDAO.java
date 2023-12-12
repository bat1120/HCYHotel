package kr.co.sist.user.login.findid;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.user.sjh.dao.MyBatiseHandler;

public class FindIdDAO {

	private static FindIdDAO fiDAO;
	
	private FindIdDAO() {
	}//constuctor
	
	public static FindIdDAO getInstance(){
		if(fiDAO==null) {
			fiDAO=new FindIdDAO();
		}//end if
		return fiDAO;
	}//getInstance
	
	public FindIdDomain selectCheckId(FindIdVO fiVO) {
		FindIdDomain fid=null;
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		fid=ss.selectOne("kr.co.sist.user.sjh.findIdPassMapper.selectMemId",fiVO);
		
		
		return fid;
	}//selectCheckId
}//class
