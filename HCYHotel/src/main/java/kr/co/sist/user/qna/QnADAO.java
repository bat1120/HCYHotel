package kr.co.sist.user.qna;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.user.kdy.dao.MyBatiseHandler;

@Component
public class QnADAO {
	

	public List<QnADomain> selectQnAList() throws PersistenceException {
		List<QnADomain> list=null;
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance(); 
		SqlSession ss=mbh.getMyBatisHandler(false);
		list=ss.selectList("kr.co.sist.user.kdy.qnaMapper.selectAllQnaList");
		mbh.closeHandler(ss);
		return list;
	}//showQnAList
	
	public List<QnADomain> selectWordQnA( ) throws PersistenceException{
		List<QnADomain> list=null;
		
		return list;
	}//selectWordQnA
	
	public QnADomain selectQnADetail( String questionCode ) throws PersistenceException{
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		QnADomain qd=ss.selectOne("kr.co.sist.user.kdy.qnaMapper.selectQnaDetail", questionCode);
		mbh.closeHandler(ss);
		
		System.out.println(qd);
		
		return qd;
	}//selectQnADetail
	
	public void insertWriteQnA( WriteQnAVO wqVO ) throws PersistenceException{
		
		MyBatiseHandler mbh=MyBatiseHandler.getInstance();
		SqlSession ss=mbh.getMyBatisHandler(false);
		ss.insert("kr.co.sist.user.kdy.qnaMapper.insertQna", wqVO);
		mbh.closeHandler(ss);
		
	}//insertWriteQnA
	
	public static void main(String[] args) {
	QnADAO qDAO=new QnADAO();
	
	qDAO.selectQnADetail("Q000001");
	}//main
	
}//class
