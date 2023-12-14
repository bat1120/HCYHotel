package kr.co.sist.user.mypage.mydiningreview;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyDiningReviewController {

	@Autowired
	private MyDiningReviewService mdrs;
	
	@GetMapping("user/review/myreview/mydiningreview_list.do")
	public String myDiningReviewList( Model model ) {
		
		List<ReviewDomain> mydrd=mdrs.searchDiningReview();
		
		model.addAttribute("diningReivewList", mydrd);
		
		
		return "user/review/myreview/mydiningreview_list";
	}//myDiningReviewList
	
	public String reviewErase( DeleteReviewVO drVO ) {
		
		
		return "";
	}//reviewErase
	
	@GetMapping("user/review/myreview/mydiningreview_write.do")
	public String myDiningReviewWrite() {
		
		return "user/review/myreview/mydiningreview_write";
	}//myDiningReviewWrite
	
}//class
