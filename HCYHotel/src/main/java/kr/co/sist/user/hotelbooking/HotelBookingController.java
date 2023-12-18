package kr.co.sist.user.hotelbooking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HotelBookingController {
	
	@GetMapping("/user/hotel/room/user_roombooking.do")
	public String roomBooking() {
		return "user/hotel/room/user_roombooking"; 
	}//roomInfo
}
