package kr.co.sist.user.hotelinfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HotelInfoController {

	@GetMapping("/user/hotel/hotelInfo/user_hotel_info.do")
	public String hotelMainSearch() {
		return "user/hotel/hotelInfo/user_hotel_info"; 
	}//hotelMain
}
