package kr.co.sist.admin.question;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import kr.co.sist.admin.dao.MyBatiseHandlerAdmin;
import kr.co.sist.admin.paging.PagingVO;

@Component
public class QuestionDAO {
	public List<QuestionDomain> selectQuestion(PagingVO pVO){
		List<QuestionDomain> list = null;
		
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		list = ss.selectList("kr.co.sist.admin.question.selectQuestion",pVO);
		
		return list; 
	}//selectQuestion
	
	public QuestionInfoDomain selectQuestionInfo(String questionCode) {
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		QuestionInfoDomain qid = ss.selectOne("kr.co.sist.admin.question.selectQuestionDetail",questionCode);
		
		return qid;
	}//selectQuestionInfo
	
	public int updateAnswer(UpdateAnswerVO uaVO) {
		MyBatiseHandlerAdmin mbha = MyBatiseHandlerAdmin.getInstance();
		SqlSession ss = mbha.getMyBatisHandler(true);
		int flag = ss.update("kr.co.sist.admin.question.updateAnswer",uaVO);
		return flag;
	}//updateAnswer
}//class
