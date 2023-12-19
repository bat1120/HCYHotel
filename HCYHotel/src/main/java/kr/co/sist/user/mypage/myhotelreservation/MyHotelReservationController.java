package kr.co.sist.user.mypage.myhotelreservation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyHotelReservationController {

	@GetMapping("/user/mypage/myhotelreservation.do")
	public String goHotelreservation( /* Model model */ ) {
		
		return "/user/mypage/my_hotel_reservation";
	}//myHotelReviewList
	
	

	@GetMapping("/user/mypage/myroomreview_write.do")
	public String writeHotelReview() {
		
		return "/user/mypage/myroomreview_write";
	}//myHotelReviewWrite
	
}
