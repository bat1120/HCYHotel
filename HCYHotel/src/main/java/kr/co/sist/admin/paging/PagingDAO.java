package kr.co.sist.admin.paging;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.MyBatiseHandlerAdmin;
@Component
public class PagingDAO {
	public int selectTotalCnt(PagingSearchVO psVO) {
		int totalPage = 0;
		MyBatiseHandlerAdmin mbh = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbh.getMyBatisHandler(true);
		totalPage = ss.selectOne("kr.co.sist.admin.pagingMapper.selectTotalCnt",psVO);
		
		return totalPage;
	}//selectTotalPage
}//class
