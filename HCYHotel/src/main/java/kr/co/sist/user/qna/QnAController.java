package kr.co.sist.user.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QnAController {

	@GetMapping("/user/qna/user_qna_list.do")
	public String userQnaList() {
		return "user/qna/user_qna_list";
	}//userQnaList
	
	@GetMapping("/user/qna/user_qna_write.do")
	public String userQnaWrite() {
		return "user/qna/user_qna_write";
	}//userQnaList
	
	@GetMapping("/user/qna/user_qna_detail.do")
	public String userQnaDetail() {
		return "user/qna/user_qna_detail";
	}//userQnaList
	
}//class
