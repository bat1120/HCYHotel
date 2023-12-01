package kr.co.sist.user.dininginfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DiningInfoController {

	@GetMapping("/user/dining/dining_info.do")
	public String diningInfo() {
		
		return "user/dining/dining_info";
	}//diningInfo
	
}//class
