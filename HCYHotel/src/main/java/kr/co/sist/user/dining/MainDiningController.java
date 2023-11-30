package kr.co.sist.user.dining;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainDiningController {

	@GetMapping("/user/dining_main.do")
	public String diningMain() {
		
		return "user/dining_main";
		//왜 지운애들은 뜨고 안지운 애들은 하나씩 사라지는걸까...
		//으아아악
	}//diningMain
	
}//class
