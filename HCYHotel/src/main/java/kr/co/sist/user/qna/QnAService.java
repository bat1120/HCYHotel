package kr.co.sist.user.qna;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.user.notice.NoticeDAO;

@Service
public class QnAService {

	@Autowired(required = false)
	private QnADAO qDAO;
	
	public List<QnADomain> showQnaList() {
		List<QnADomain> list=new ArrayList<QnADomain>();
		
		return list ;
	}//showQnaList
	
}//class
