package kr.co.sist.user.login;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class LoginController {
	
	@GetMapping("/user/login/user_login.do")
	public String goLogin() {
		return "user/login/user_login";
	}//goLogin
	
	
	@PostMapping("/user/login/user_login_process.do")
	public String login(Model model,LoginVO lVO,HttpSession session) {
		LoginService ls=LoginService.getInstance();
		if(ls.checkLogin(lVO)) {
			session.setAttribute("id",lVO.getId());	
			
			return "user/home/user_home";
		}//end if
		
		model.addAttribute("loginerror","로그인 정보를 다시 확인해주세요");
		return "user/login/login_error";
	}//login 
	
	
	public String logOut(SessionStatus ss) {
		
		ss.setComplete();
		
		return "redirect:/user/home/user_home";
	}//logOut

}//class
