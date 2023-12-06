package kr.co.sist.user.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class LoginController {
	
	@GetMapping("/user/login/user_login.do")
	public String goLogin() {
		return "user/login/user_login";
	}//goLogin
	
	
	public String login(Model model,LoginVO lVO) {
		
		return "user/home/user_home";
	}//login 
	
	
	public String logOut(SessionStatus ss) {
		
		ss.setComplete();
		
		return "user/home/user_home";
	}//logOut

}//class
