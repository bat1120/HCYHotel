package kr.co.sist.admin.login;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminLoginController {
		
	@GetMapping("/admin/gologin.do")
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
	public String login(LoginVO lVO, HttpSession session) {
		
		
		
		return "admin/msg";
	}//login
}//class
