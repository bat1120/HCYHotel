package kr.co.sist.user.login.findid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FindIdController {

	@GetMapping("/user/findId/user_find_id.do")
	public String findId() {
		return "user/findId/user_find_id";
	}
	
	@GetMapping("/user/findId/user_result_id.do")
	public String resultFindId() {
		return "user/findId/user_result_id";
	}
	
	@GetMapping("/user/findId/business_find_id.do")
	public String businessFindId() {
		return "user/findId/business_find_id";
	}
	
	@GetMapping("/user/findId/business_result_id.do")
	public String businessResultFindId() {
		return "user/findId/business_result_id";
	}
}
