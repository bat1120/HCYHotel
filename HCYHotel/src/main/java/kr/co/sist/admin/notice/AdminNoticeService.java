package kr.co.sist.admin.notice;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.transform.impl.AddDelegateTransformer;
import org.springframework.stereotype.Component;

@Component
public class AdminNoticeService {
	@Autowired
	private AdminNoticeDAO anDAO;
	
	public List<LoadNoticeDomain> loadNotice(NoticePagingVO npVO){
		List<LoadNoticeDomain> list = null;
		
		list = anDAO.selectNotice(npVO);
		
		return list;
	}//loadNotice
	
	public NoticeInfoDomain loadNoticeDetail(String noticeCode) {
		
		NoticeInfoDomain nid = anDAO.selectNoticeInfo(noticeCode);
		
		return nid;
	}//loadNoticeDetail
	
	public void expungeNotice(String noticeCode) throws PersistenceException {
		anDAO.deleteNotice(noticeCode);
	}//ecpungeNotice

	public boolean fixNoticeInfo(NoticeInfoVO niVO) {
		int flag = anDAO.updateNotice(niVO);
		if(flag==0) {return false;}
		return true;
	}//fixNoticeInfo
	
	public void writeNotice(WriteNoticeVO wnVO) {
		anDAO.insertNotice(wnVO);
	}//writeNotice
}//class
