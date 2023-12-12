package kr.co.sist.admin.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.sist.admin.paging.PagingSearchVO;
import kr.co.sist.admin.paging.PagingService;
import kr.co.sist.admin.paging.PagingVO;

@Controller
public class QuestionController {
	@Autowired
	private QuestionService qs;
	@Autowired
	private PagingService ps;
	
	@RequestMapping(value="/admin/goQuestion.do", method = {RequestMethod.GET,RequestMethod.POST})
	public String goQuestion(Model model) {
		PagingVO pVO = new PagingVO();
		pVO.setStartNum(1);
		pVO.setEndNum(10);
		List<QuestionDomain> list = qs.loadQuestion(pVO);
		model.addAttribute("questionList",list);
		PagingSearchVO psVO = new PagingSearchVO();
		psVO.setCurrentPage(1);
		psVO.setPageScale(10);
		psVO.setTableName("QUESTION");
		model.addAttribute("paging",ps.getPDomain(psVO));
		
		return "admin/question/manageQuestion";
	}//goQuestion
	
	@PostMapping("/admin/goQuestionDetail.do")
	public String goQuestionDetail(Model model, String questionCode) {
		
		QuestionInfoDomain qid = qs.loadQuestionInfo(questionCode);
		model.addAttribute("questionInfo",qid);
		
		return "admin/question/questionDetail";
	}//goQuestionDetail
	
	@PostMapping("/admin/answer.do")
	public String answerQuestion(Model model, String answer) {
		if(qs.writeAnswer(answer)) {
			model.addAttribute("msg","답변이 등록되었습니다.");
			model.addAttribute("url","goQuestion.do");
			return "forward:msg.do";
		}//if
		model.addAttribute("msg","답변 등록중에 문제가 발생했습니다. 다시 시도해주세요!");
		model.addAttribute("url","goQuestion.do");
		return "forward:msg.do";
	}//answerQuestion

}//class
