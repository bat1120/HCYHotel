package kr.co.sist.user.notice;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.sist.user.kdy.dao.MyBatiseHandler;

public class NoticeDAO {
	
	private static NoticeDAO nDAO;
	
	private NoticeDAO() {
		
	}
	
	public static NoticeDAO getInstance() {
		if( nDAO == null ) {
			nDAO = new NoticeDAO();
		}//end if
		
		return nDAO;
	}//getInstance
	
	public List<NoticeDomain> selectDiscoverNotice()  throws PersistenceException {
		List<NoticeDomain> list=null;
		
		 MyBatiseHandler mbh=MyBatiseHandler.getInstance(); 
		 SqlSession ss=mbh.getMyBatisHandler(false);
		 list=ss.selectList("kr.co.sist.user.kdy.noticeMapper.selectAllNoticeList");
		 mbh.closeHandler(ss);
		 
		 return list;
	}//selectAllNoticeList
	
	
	public NoticeDomain selectNoticeDetail( String noticeCode ) throws PersistenceException {
		MyBatiseHandler mbh=MyBatiseHandler.getInstance(); 
		SqlSession ss=mbh.getMyBatisHandler(false);
		
		NoticeDomain nd=ss.selectOne("kr.co.sist.user.kdy.noticeMapper.selectNoticeDetail", noticeCode);
		mbh.closeHandler(ss);
		
		System.out.println(nd);
		
		return nd;
		
	}//selectNoticeDetail
	
	/*
	 * public static void main(String[] args) { nDAO=new NoticeDAO();
	 * 
	 * nDAO.selectNoticeDetail("N000007"); }//main
	 */	
	

	/*
	 * public List<NoticeDomain> selectDiscoverNotice( NoticeVO nVO ) throws
	 * PersistenceException{ List<NoticeDomain> list = null;
	 * 
	 * MyBatiseHandler mbh=MyBatiseHandler.getInstance(); SqlSession
	 * ss=mbh.getMyBatisHandler(false);
	 * list=ss.selectList("kr.co.sist.notice.selectAllNoticeList", nVO);
	 * mbh.closeHandler(ss);
	 * 
	 * return list; }//selectDiscoverNotice
	 */	
}//class
