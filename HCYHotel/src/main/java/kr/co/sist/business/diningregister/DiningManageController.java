package kr.co.sist.business.diningregister;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DiningManageController {

	@GetMapping("/BusinessManage/businessDiningMain.do")
	public String goBookingManage(HttpSession session,Model model) {
		session.setAttribute("id", "bat1120");
		
		
		
		return "BusinessManage/businessmange_dining_main";
	}
	
}
