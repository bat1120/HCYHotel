package kr.co.sist.user.login.findid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FindIdController {

	@GetMapping("/user/findId/user_findId.do")
	public String login() {
		return "user/findId/user_findId";
	}
	
	@GetMapping("/user/findId/user_resultId.do")
	public String loginResult() {
		return "user/findId/user_resultId";
	}
}
