package kr.co.sist.user.qna;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.user.kdy.dao.MyBatiseHandler;

@Component
public class QnADAO {

	public List<QnADomain> showQnAList() throws PersistenceException {
		List<QnADomain> list=null;
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance(); 
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.user.kdy.qnaMapper.selectAllQnaList");
		mbh.closeHandler(ss);
		return list;
	}//showQnAList
	
}//class
