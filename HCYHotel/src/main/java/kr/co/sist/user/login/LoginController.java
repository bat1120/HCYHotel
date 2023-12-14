package kr.co.sist.user.login;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.admin.login.AdminLoginService;

@Controller
public class LoginController {
	
	@GetMapping("/user/login/user_login.do")
	public String goLogin(Model model,HttpServletResponse respons,
			@CookieValue(value = "useridRememberFlag",defaultValue = "")String idRememberFlag, 
			@CookieValue(value = "userid",defaultValue = "")String id) {
		
		if("Y".equals(idRememberFlag)) {
			model.addAttribute("idRememberFlag",idRememberFlag);
			model.addAttribute("id",id);
			return "user/login/user_login";
		}//if
	
		LoginService ls=LoginService.getInstance();
		ls.setCookie(respons,"useridRememberFlag","N");
		model.addAttribute("idRememberFlag","N");
		return "user/login/user_login";
	}//goLogin
	
	
	@PostMapping("/user/login/user_login_process.do")
	public String login(Model model,LoginVO lVO,HttpServletResponse response, HttpSession session) {
		
		LoginService ls=LoginService.getInstance();
		
		if("1".equals(lVO.getMemberFlag())){
			if(ls.checkLogin(lVO)) {
				session.setAttribute("id",lVO.getId());	
				model.addAttribute("login","Y");
				if("Y".equals(lVO.getId_save())) {
					System.out.println("id : "+lVO.getId());
					ls.setCookie(response, "useridRememberFlag", "Y");
					ls.setCookie(response, "userid", lVO.getId());
					return "user/home/user_home";
				}//if
				ls.removeCookie(response, "useridRememberFlag", "");
				ls.removeCookie(response,"userid", "");
				return "user/home/user_home";
			}else {
				model.addAttribute("loginerror","로그인 정보를 다시 확인해주세요");
				return "user/login/login_error";
			}//end else
		}else if("2".equals(lVO.getMemberFlag())) {
			if(ls.checkBusLogin(lVO)) {
				session.setAttribute("id",lVO.getId());	
				model.addAttribute("login","Y");
				if("Y".equals(lVO.getId_save())) {
					ls.setCookie(response, "idRememberFlag", "Y");
					ls.setCookie(response, "id", lVO.getId());
					return "user/home/user_home";
				}//if
				ls.removeCookie(response, "idRememberFlag", "");
				ls.removeCookie(response,"id", "");
				return "user/home/user_home";
				
			}else {
				model.addAttribute("loginerror","로그인 정보를 다시 확인해주세요");
				return "user/login/login_error";
			}//end else
		}//end if
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
