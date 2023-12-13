package kr.co.sist.user.qna;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class QnAController {
	
	@Autowired
	private QnAService qs;
	
	@GetMapping("/user/qna/user_qna_list.do")
	public String searchQnA( Model model ) {
		model.addAttribute("qnaList", qs.showQnaList());
		return "user/qna/user_qna_list";
	}//userQnaList
	
	@GetMapping("/user/qna/user_qna_detail.do")
	public String searchQnADetail( String questionCode, Model model ) {
		
		QnADomain qd=qs.searchQnADetail(questionCode);
		
		model.addAttribute("qna", qd);
		
		/* 	NoticeService ns=NoticeService.getInstance();
		NoticeDomain nd=ns.searchNoticeDetail(noticeCode);
		
		model.addAttribute("notice", nd);
		*/
		return "user/qna/user_qna_detail";
	}//searchQnADetail
	
	@GetMapping("/user/qna/user_qna_write.do")
	public String goWriteQnA( HttpSession id ) {
		
		return "user/qna/user_qna_write";
	}//userQnaList
	
	@PostMapping("user/qna/user_qna_write")
	public String writeQnA( WriteQnAVO wqVO ) {
		
		return "";
	}//writeQnA
	
}//class
