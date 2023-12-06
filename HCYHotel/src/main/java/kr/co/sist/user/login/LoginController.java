package kr.co.sist.user.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/user/login/user_login.do")
	public String login() {
		return "user/login/user_login";
	}

}//class
