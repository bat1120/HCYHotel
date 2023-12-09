package kr.co.sist.user.login;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

@Controller
public class LoginController {
	
	@GetMapping("/user/login/user_login.do")
	public String goLogin() {
		return "user/login/user_login";
	}//goLogin
	
	
	@PostMapping("/user/login/user_login_process.do")
	public String login(Model model,LoginVO lVO, HttpSession session) {
		
		LoginService ls=LoginService.getInstance();
		
		if("1".equals(lVO.getMemberFlag())){
			if(ls.checkLogin(lVO)) {
				session.setAttribute("id",lVO.getId());	
				System.out.println("**사용자"+lVO.getMemberFlag());
				return "user/home/user_home";
			}else {
				model.addAttribute("loginerror","로그인 정보를 다시 확인해주세요");
				return "user/login/login_error";
			}//end else
		}else if("2".equals(lVO.getMemberFlag())) {
			if(ls.checkBusLogin(lVO)) {
				session.setAttribute("id",lVO.getId());	
				System.out.println("**사업자"+lVO.getMemberFlag());
				return "user/home/user_home";
				
			}else {
				model.addAttribute("loginerror","로그인 정보를 다시 확인해주세요");
				return "user/login/login_error";
			}//end else
		}
		model.addAttribute("loginerror","로그인 정보를 다시 확인해주세요");
		return "user/login/login_error";
	}//login 
	
	@RequestMapping("/user_logout.do")
	public String logOut(SessionStatus ss,HttpSession session) {
		
		session.invalidate();
		//System.out.println("왓니?");
		
		ss.setComplete();
		
		return "user/home/user_home";
	}//logOut

}//class
