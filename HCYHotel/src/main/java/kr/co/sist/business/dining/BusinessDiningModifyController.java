package kr.co.sist.business.dining;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BusinessDiningModifyController {
	@GetMapping("/BusinessManage/businessDining.do")
	public String goManageDining(HttpSession session) {
		
		return "BusinessManage/businessmanage_dining";
	}
}
