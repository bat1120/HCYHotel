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
			@CookieValue(value = "userid",defaultValue = "")String id,
			@CookieValue(value = "busidRememberFlag",defaultValue = "")String busidRememberFlag, 
			@CookieValue(value = "busid",defaultValue = "")String busid) {
		
		System.out.println(idRememberFlag);
		System.out.println(id);
		
		if("Y".equals(idRememberFlag)) {
			model.addAttribute("idRememberFlag",idRememberFlag);
			model.addAttribute("id",id);
			return "user/login/user_login";
		}else if("Y".equals(busidRememberFlag)) {
			model.addAttribute("busidRememberFlag",busidRememberFlag);
			model.addAttribute("busid",busid);
			return "user/login/user_login";
		}
		System.out.println("asdfasdfasdfsa");
		LoginService ls=LoginService.getInstance();
		ls.setCookie(respons,"useridRememberFlag","N");
		ls.setCookie(respons,"busidRememberFlag","N");
		model.addAttribute("idRememberFlag","N");
		model.addAttribute("busidRememberFlag","N");
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
					ls.setCookie(response, "busidRememberFlag", "Y");
					ls.setCookie(response, "busid", lVO.getId());
					return "user/home/user_home";
				}//if
				ls.removeCookie(response, "busidRememberFlag", "");
				ls.removeCookie(response,"busid", "");
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
