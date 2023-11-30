package kr.co.sist.business.diningschedule;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusinessDiningScheduleModiftController {
	@GetMapping("/BusinessManage/businessDiningSchedule.do")
	public String goManageDiningSchedule(HttpSession session) {
		session.setAttribute("id", "asdf");
	
		return "BusinessManage/businessmanage_dining_schedule";
	}
}
