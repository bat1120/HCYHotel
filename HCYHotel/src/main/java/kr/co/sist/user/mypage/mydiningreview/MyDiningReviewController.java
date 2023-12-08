package kr.co.sist.user.mypage.mydiningreview;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyDiningReviewController {

	@GetMapping("user/review/myreview/mydiningreview_list.do")
	public String myDiningReviewList() {
		
		return "user/review/myreview/mydiningreview_list";
	}//myDiningReviewList
	
	@GetMapping("user/review/myreview/mydiningreview_write.do")
	public String myDiningReviewWrite() {
		
		return "user/review/myreview/mydiningreview_write";
	}//myDiningReviewWrite
	
}//class
