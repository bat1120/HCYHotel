package kr.co.sist.admin.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.sist.admin.dashboard.DashboardDomain;

@SessionAttributes({"id","login"})
@Controller
public class AdminLoginController {
		
	@RequestMapping(value="/admin/gologin.do", method= {RequestMethod.GET,RequestMethod.POST})
		public String goLogin(Model model,HttpServletResponse respons,
				@CookieValue(value = "idRememberFlag",defaultValue = "")String idRememberFlag, 
				@CookieValue(value = "id",defaultValue = "")String id) {
			
			if("Y".equals(idRememberFlag)) {
				model.addAttribute("idRememberFlag",idRememberFlag);
				model.addAttribute("id",id);
				return "admin/login/signin";
			}//if
		
			AdminLoginService als = AdminLoginService.getInstance();
			als.setCookie(respons,"idRememberFlag","N");
			model.addAttribute("idRememberFlag","N");
			return "admin/login/signin";
		}//goLogin
		
	@PostMapping("/admin/login.do")
	public String login(LoginVO lVO, HttpSession session,Model model,HttpServletResponse response) {
		AdminLoginService as = AdminLoginService.getInstance();
		if(as.checkLogin(lVO)) {
			model.addAttribute("id",lVO.getId());
			model.addAttribute("login","Y");

			if("Y".equals(lVO.getCheck())) {
				as.setCookie(response, "idRememberFlag", "Y");
				as.setCookie(response, "id", lVO.getId());
				return "forward:goDashboard.do";
			}//if
			
			as.removeCookie(response, "idRememberFlag", "");
			as.removeCookie(response,"id", "");
			return "admin/dashboard/dashboard";
		}//if
		model.addAttribute("msg","로그인 정보가 일치하지 않습니다.");
		model.addAttribute("url","gologin.do");
		return "forward:msg.do";
	}//login
	
	@RequestMapping(value="/admin/logout.do", method= {RequestMethod.GET,RequestMethod.POST})
	public String logout(SessionStatus ss,Model model) {
		
		ss.setComplete();
		
		return "forward:gologin.do";
	}//logout
	
	@RequestMapping(value="/admin/msg.do", method= {RequestMethod.GET,RequestMethod.POST})
	public String msg(HttpServletRequest request,Model model) {
		
		model.addAttribute("msg",request.getAttribute("msg"));
		model.addAttribute("url",request.getAttribute("url"));
		
		return "admin/msg";
	}//msg
}//class
