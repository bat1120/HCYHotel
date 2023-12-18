package kr.co.sist.user.hotelbooking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HotelBookingController {
	@PostMapping("/user/hotel/room/user_roombooking.do")
	public String roomBooking() {
		return "user/hotel/room/user_roombooking"; 
	}//roomInfo
}
