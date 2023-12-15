package kr.co.sist.user.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@GetMapping("/user/home/user_home.do")
	public String home() {
		return "user/home/user_home"; 
	}//home
}
