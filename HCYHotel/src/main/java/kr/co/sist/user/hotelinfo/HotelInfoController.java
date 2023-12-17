package kr.co.sist.user.hotelinfo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HotelInfoController {

	@GetMapping("/user/hotel/hotelInfo/user_hotel_info.do")
	public String goHotelInfo(String hotelcode,Model model) {
		HotelInfoService his=HotelInfoService.getInstance();
		HotelInfoDomain hotelInfo=his.showHotelInfo(hotelcode);
		
		System.out.println("호텔인포************"+hotelInfo);
		model.addAttribute("hotelInfo",hotelInfo);
		System.out.println(model.getAttribute("hotelInfo"));
		return "user/hotel/hotelInfo/user_hotel_info"; 
	}//hotelMain
}
