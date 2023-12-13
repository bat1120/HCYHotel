package kr.co.sist.user.login.findpassword;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/findPass")
public class FindPassController {

	@GetMapping("/findIdPass_check.do")
	public String goPassCheck() {
		
		return "user/findId/findIdPass_check";
	}//goPassCheck
	
	@GetMapping("/user_find_pass.do")
	public String searchMemberPass() {
		return "user/findPass/user_find_pass";
	}//searchMemberPass
	
	@GetMapping("/business_find_pass.do")
	public String searchBusinessPass() { 
		return "user/findPass/business_find_pass";
	}//searchBusinessPass
	
	@GetMapping("/user_result_pass.do")
	public String resetPass() {
		return "user/findPass/user_result_pass";
	}//resetPass
	
	
	@GetMapping("/business_result_pass.do")
	public String resetBusinessPass() {
		return "user/findPass/business_result_pass";
	}//resetBusinessPass
}//class
