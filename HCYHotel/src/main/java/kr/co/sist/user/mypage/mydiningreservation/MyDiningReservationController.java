package kr.co.sist.user.mypage.mydiningreservation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyDiningReservationController {

	@GetMapping("user/mypage/mydiningreservation.do")
	public String goDiningreservation( /* Model model */ ) {
		
		return "user/mypage/my_dining_reservation";
	}//goDiningreservation
	
	@GetMapping("user/mypage/mydiningreview_list.do")
	public String goDiningReview( /* String id, Model model*/) {
		
		return "user/mypage/mydiningreview_list";
	}//goDiningReview
	
	@GetMapping("user/mypage/mydiningreview_write.do")
	public String writeDiningReview(/*ReviewVO rVO, Model model*/) {
		
		return "user/mypage/mydiningreview_write";
	}//writeDiningReview
	
}//class
