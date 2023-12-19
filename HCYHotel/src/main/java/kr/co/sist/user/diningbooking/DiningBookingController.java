package kr.co.sist.user.diningbooking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DiningBookingController {

	@GetMapping("user/dining/dining_booking.do")
	public String diningBooking() {
		return "user/dining/dining_booking1";
	}//diningBooking

	@GetMapping("user/dining/dining_booking1.do")
	public String diningBooking1() {
		return "user/dining/dining_booking";
	}//diningBooking
	
}//class
