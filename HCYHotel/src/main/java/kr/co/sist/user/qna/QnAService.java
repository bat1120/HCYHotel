package kr.co.sist.user.qna;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import kr.co.sist.user.notice.NoticeDAO;

@Component
public class QnAService {

	@Autowired
	private QnADAO qDAO;
	
	public List<QnADomain> showQnaList() {
		List<QnADomain> list=qDAO.selectQnAList();
		return list ;
	}//showQnaList
	
	public List<QnADomain> searchWordQnA( QnAVO qVO ) {
		List<QnADomain> list=new ArrayList<QnADomain>();
		
		return list; 
	}//searchWordQnA
	
	public QnADomain searchQnADetail( String questionCode ) {
		
		QnADomain qd=null;
		
		try {
		qd=qDAO.selectQnADetail(questionCode);
		}catch(PersistenceException pe) {
			pe.printStackTrace();
		}//end catch
		
		return qd;
	}//searchQnADetail
	
	public void plusQnA( WriteQnAVO wqVO ) throws PersistenceException{
		
		try {
			
		}catch(PersistenceException pe){
			pe.printStackTrace();
		}//end catch
	}//plusQnA
	
}//class
