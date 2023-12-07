package kr.co.sist.user.mypage.myhotelreview;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyHotelReviewController {

	@GetMapping("/user/review/myreview/myroomreview_list.do")
	public String myHotelReviewList() {
		return "user/review/myreview/myroomreview_list";
	}//myHotelReviewList


}//class
