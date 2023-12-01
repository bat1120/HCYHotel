package kr.co.sist.user.login.findid;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FindIdController {

	@GetMapping("/user/user_findId.do")
	public String login() {
		return "user/user_findId";
	}
}
