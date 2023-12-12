package kr.co.sist.admin.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.paging.PagingVO;

@Component
public class QuestionService {
@Autowired
private QuestionDAO qDAO;

	public List<QuestionDomain> loadQuestion(PagingVO pVO){
		List<QuestionDomain> list = qDAO.selectQuestion(pVO);
		
		for(QuestionDomain qd : list) {
			qd.setAnswerFlag(qd.getAnswer()!=null);
		}//for
		
		return list;
	}//loadQuestion
	
	public QuestionInfoDomain loadQuestionInfo(String QuestionCode) {
		QuestionInfoDomain qid = new QuestionInfoDomain();
		qid = qDAO.selectQuestionInfo(QuestionCode);
		
		return qid;
	}//loadQuestionInfo
	
	public boolean writeAnswer(String answer) {
		boolean flag = qDAO.updateAnswer(answer)==1;
		return flag;
	}//writeAnswer
}//class
