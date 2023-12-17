package kr.co.sist.user.hotelsearch;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.co.sist.user.home.HomeService;
import kr.co.sist.user.home.HotelDomain;

@Controller
public class HotelSearchController {
	
	@GetMapping("/user/hotel/hotelSearch/user_hotel_search.do")
	public String hotelMainSearch(@ModelAttribute SearchVO searchVO, Model model) {
		HotelSearchService hotelSearchService=HotelSearchService.getInstance();
		List<HotelDomain> hotelList = hotelSearchService.getHotelBySearch(searchVO);
		model.addAttribute("hotelList", hotelList);
		System.out.println("-----------------");
		System.out.println(hotelList);
		return "user/hotel/hotelSearch/user_hotel_search"; 
	}//hotelMain
	
	@GetMapping("/user/hotel/hotelSearch/user_hotel_search_map.do")
	public String hotelMapSearch() {
		return "user/hotel/hotelSearch/user_hotel_search_map";   
	}//hotelMapSearch

}
