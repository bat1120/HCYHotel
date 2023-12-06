package kr.co.sist.admin.paging;

import org.apache.ibatis.session.SqlSession;

import kr.co.sist.admin.dao.MyBatiseHandler;

public class PagingDAO {
	private static PagingDAO pDAO;
	private PagingDAO() {
	}//constructor
	
	public static PagingDAO getInstance() {
		if(pDAO==null) {pDAO = new PagingDAO();}
		return pDAO;
	}//getInstance
	
	
	public int selectTotalCnt(PagingSearchVO psVO) {
		int totalPage = 0;
		MyBatiseHandler mbh = MyBatiseHandler.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		totalPage = ss.selectOne("kr.co.sist.admin.pagingMapper.selectTotalCnt",psVO);
		
		return totalPage;
	}//selectTotalPage
}//class
