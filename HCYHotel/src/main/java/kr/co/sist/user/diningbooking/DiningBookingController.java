package kr.co.sist.user.diningbooking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DiningBookingController {

	@GetMapping("user/dining/dining_booking.do")
	public String diningBooking() {
		return "user/dining/dining_booking";
	}//diningBooking
	
}//class
