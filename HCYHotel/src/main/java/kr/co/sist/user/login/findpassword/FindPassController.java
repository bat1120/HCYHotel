package kr.co.sist.user.login.findpassword;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FindPassController {

	@GetMapping("/user/findPass/user_findPass.do")
	public String login() {
		return "user/findPass/user_findPass";
	}
	
	@GetMapping("/user/findPass/user_resultPass.do")
	public String loginResult() {
		return "user/findPass/user_resultPass";
	}
}//class
