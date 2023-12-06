package kr.co.sist.user.join;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JoinMemberController {
	
	@GetMapping("/user/join/join_check.do")
	public String check() {
		return "user/join/join_check";
	}
	
	@GetMapping("/user/join/user_join_check.do")
	public String userCheck() {
		return "user/join/user_join_check";
	}
	
	@GetMapping("/user/join/user_join.do")
	public String userJoin() {
		return "user/join/user_join";
	}
	
	@GetMapping("/user/join/business_join.do")
	public String businessJoin() {
		return "user/join/business_join";
	}
}//class
