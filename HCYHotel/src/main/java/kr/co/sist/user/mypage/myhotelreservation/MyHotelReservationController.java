package kr.co.sist.user.mypage.myhotelreservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyHotelReservationController {

	@GetMapping("user/review/myreview/myhotelreview_list.do")
	public String myHotelReviewList() {
		
		return "user/review/myreview/myhotelreview_list";
	}//myHotelReviewList
	
	@GetMapping("user/review/myreview/myhotelreview_write.do")
	public String myHotelReviewWrite() {
		
		return "user/review/myreview/myhotelreview_write";
	}//myHotelReviewWrite
	
}
