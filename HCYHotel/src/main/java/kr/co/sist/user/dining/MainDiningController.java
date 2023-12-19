package kr.co.sist.user.dining;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainDiningController {

	@GetMapping("/user/dining/dining_main.do")
	public String diningMain() {
		
		return "/user/dining/dining_main";
		//왜 지운애들은 뜨고 안지운 애들은 하나씩 사라지는걸까... >>는 지하가 알랴줌 Google광고 그거 지워야댐
	}//diningMain
	@GetMapping("/user/review/diningreview.do")
	public String diningReview() {
		
		return "/user/review/diningreview";
		//왜 지운애들은 뜨고 안지운 애들은 하나씩 사라지는걸까... >>는 지하가 알랴줌 Google광고 그거 지워야댐
	}//diningMain
	
}//class
