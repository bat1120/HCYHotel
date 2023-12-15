package kr.co.sist.user.mypage.myhotelreservation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyHotelReservationController {

	@GetMapping("user/mypage/myhotelreservation.do")
	public String goHotelreservation( Model model ) {
		
		return "user/mypage/myhotelreservation";
	}//myHotelReviewList
	
	@GetMapping("user/review/myreview/myhotelreview_list.do")
	public String goHotelReview( Model model ) {
		
		return "user/review/myreview/myhotelreview_list";
	}//myHotelReviewWrite

	@GetMapping("user/review/myreview/myhotelreview_write.do")
	public String writeHotelReview() {
		
		return "user/review/myreview/myhotelreview_write";
	}//myHotelReviewWrite
	
}
