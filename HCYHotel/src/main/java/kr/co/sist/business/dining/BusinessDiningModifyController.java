package kr.co.sist.business.dining;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

@Controller
public class BusinessDiningModifyController {

	public String goManageDining(HttpSession session) {
		
		return "Busin";
	}
}
