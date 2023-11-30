package kr.co.sist.business.diningregister;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DiningManageController {

	@GetMapping("/BusinessManage/businessDiningMain.do")
	public String goBookingManage(HttpSession session) {
		session.setAttribute("id", "asfasdf");
		
		return "BusinessManage/businessmange_dining_main";
	}
	
}
