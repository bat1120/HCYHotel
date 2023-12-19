package kr.co.sist.user.mypage.myquestion;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyQuestionController {

	@GetMapping("/user/mypage/my_qna_list.do")
	public String searchQuestion() {
		
		return "/user/mypage/my_qna_list";
	}//searchQuestion
	
	@GetMapping("/user/mypage/my_qna_detail.do")
	public String questionDetail() {
		return "/user/mypage/my_qna_detail";
	}//
	
} //class
