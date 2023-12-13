package kr.co.sist.user.notice;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.stereotype.Service;

public class NoticeService {

	private static NoticeService ns;

	private NoticeService() {
		
	}
	
	public static NoticeService getInstance() {
		if( ns==null ) {
			ns=new NoticeService();
		}//end if
		return ns;
	}//getInstance
	
	public List<NoticeDomain> discoverNotice(){
		List<NoticeDomain> list=new ArrayList<NoticeDomain>();
		
		NoticeDAO nDAO=NoticeDAO.getInstance();
		list=nDAO.selectDiscoverNotice();
		
		return list;
	}//showAllNoticeList
	
	public NoticeDomain searchNoticeDetail( String noticeCode ) {
		NoticeDomain nd=null;
		
		NoticeDAO nDAO=NoticeDAO.getInstance();
		try {
		nd=nDAO.selectNoticeDetail(noticeCode);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		return nd;
		
	}//searchNoticeDetail
	
//	public List<NoticeDomain> discoverNotice( NoticeVO nVO ){
//		List<NoticeDomain> list = new ArrayList<NoticeDomain>();
//
//		NoticeDAO nDAO=NoticeDAO.getInstance();
//		list=nDAO.selectDiscoverNotice(nVO);
//		
//		return list;
//	}//discoverNotice
	
}//class
