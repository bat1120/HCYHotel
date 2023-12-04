package kr.co.sist.user.login.findpassword;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FindPassController {

	@GetMapping("/user/findPass/user_find_pass.do")
	public String findPass() {
		return "user/findPass/user_find_pass";
	}
	
	@GetMapping("/user/findPass/user_result_pass.do")
	public String resultFindPass() {
		return "user/findPass/user_result_pass";
	}
	
	@GetMapping("/user/findPass/business_find_pass.do")
	public String businessFindPass() {
		return "user/findPass/business_find_pass";
	}
	
	@GetMapping("/user/findPass/business_result_pass.do")
	public String businessResultFindPass() {
		return "user/findPass/business_result_pass";
	}
}//class
