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

@Controller
public class AdminLoginController {
		
	@RequestMapping(value="/admin/gologin.do", method= {RequestMethod.GET,RequestMethod.POST})
		public String goLogin(Model model,HttpServletResponse respons,
				@CookieValue(value = "loginFlag",defaultValue = "")String loginFlag, 
				@CookieValue(value = "id",defaultValue = "")String id) {
			
			if("Y".equals(loginFlag)) {
				model.addAttribute("loginFlag",loginFlag);
				model.addAttribute("id",id);
				return "admin/login/signin";
			}//if
		
			AdminLoginService als = AdminLoginService.getInstance();
			als.setCookie(respons,"loginFlag",loginFlag);
			model.addAttribute("loginFlag","N");
			return "admin/login/signin";
		}//goLogin
		
	@PostMapping("/admin/login.do")
	public String login(LoginVO lVO, HttpSession session,Model model) {
		if(AdminLoginService.getInstance().checkLogin(lVO)) {
			
			
			
			return "admin/dashboard/dashboard";
		}//if
		model.addAttribute("msg","로그인 정보가 일치하지 않습니다.");
		model.addAttribute("url","gologin.do");
		return "forward:msg.do";
	}//login
	
	@RequestMapping(value="/admin/msg.do", method= {RequestMethod.GET,RequestMethod.POST})
	public String msg(HttpServletRequest request,Model model) {
		
		model.addAttribute("msg",request.getAttribute("msg"));
		model.addAttribute("url",request.getAttribute("url"));
		
		return "admin/msg";
	}//msg
}//class
