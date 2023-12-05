package kr.co.sist.user.hotelsearch;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HotelSearchController {
	
	@GetMapping("/user/hotel/hotelSearch/user_hotel_search.do")
	public String hotelMainSearch() {
		return "user/hotel/hotelSearch/user_hotel_search"; 
	}//hotelMain
	
	@GetMapping("/user/hotel/hotelSearch/user_hotel_search_map.do")
	public String hotelMapSearch() {
		return "user/hotel/hotelSearch/user_hotel_search_map";   
	}//hotelMapSearch

}
