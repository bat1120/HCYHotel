package kr.co.sist.user.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@GetMapping("/user/home/user_home.do")
	public String home(Model model) {
		
		HomeService hs=HomeService.getInstance();
		List<HotelDomain> recommendList = hs.getRecommendedHotels();
		List<HotelDomain> risingList = hs.getRisingHotels();
		List<HotelDomain> hotList = hs.getHotHotels();
		System.out.println("-------------------");
		System.out.println(recommendList);
		System.out.println(risingList);
		model.addAttribute("recommendList", recommendList);
		model.addAttribute("risingList", risingList);
		model.addAttribute("hotList", hotList);
		return "user/home/user_home"; 
	}//home
}
