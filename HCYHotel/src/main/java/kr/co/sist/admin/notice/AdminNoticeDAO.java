package kr.co.sist.admin.notice;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.MyBatiseHandlerAdmin;
import kr.co.sist.admin.paging.PagingSearchVO;
import oracle.net.aso.m;

@Component
public class AdminNoticeDAO {
	public List<LoadNoticeDomain> selectNotice(NoticePagingVO npVO){
		List<LoadNoticeDomain> list = null;
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		list= ss.selectList("kr.co.sist.admin.notice.selectNotice",npVO);
		
		return list;
	}//selectNotice
	
	public NoticeInfoDomain selectNoticeInfo(String noticeCode) {
		
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		NoticeInfoDomain nid = ss.selectOne("kr.co.sist.admin.notice.selectNoticeDetail",noticeCode);
		
		return nid;
	}//selectNoticeInfo
	
	public void deleteNotice(String noticeCode) throws PersistenceException {
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		ss.delete("kr.co.sist.admin.notice.deleteNotice",noticeCode);
	}//deleteNotice
	
	public int updateNotice(NoticeInfoVO niVO) {
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		int count = ss.update("kr.co.sist.admin.notice.updateNotice",niVO);
		return count;
	}//modifyNotice
}//class
