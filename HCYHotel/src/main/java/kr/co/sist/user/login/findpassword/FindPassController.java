package kr.co.sist.user.login.findpassword;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/findPass")
public class FindPassController {

	@GetMapping("/user_find_pass.do")
	public String findPass() {
		return "user/findPass/user_find_pass";
	}//findPass
	
	@GetMapping("/user_result_pass.do")
	public String resultFindPass() {
		return "user/findPass/user_result_pass";
	}//resultFindPass
	
	@GetMapping("/business_find_pass.do")
	public String businessFindPass() {
		return "user/findPass/business_find_pass";
	}//businessFindPass
	
	@GetMapping("/business_result_pass.do")
	public String businessResultFindPass() {
		return "user/findPass/business_result_pass";
	}//businessResultFindPass
}//class
