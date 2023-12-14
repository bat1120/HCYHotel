package kr.co.sist.user.mypage.mydiningreview;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.user.kdy.dao.MyBatiseHandler;

@Component
public class MyDiningReviewDAO {

	public List<ReviewDomain> selectDiningReview( /*사실 이거 리뷰코드일거같은데..?*/ ) throws PersistenceException{
	
		List<ReviewDomain> list=null;
			
		MyBatiseHandler mbh=MyBatiseHandler.getInstance(); 
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.user.kdy.diningReviewMapper.selectAllMyDiningReview");
		mbh.closeHandler(ss);
		return list;
		
	}//selectDiningReview
	
}//class
